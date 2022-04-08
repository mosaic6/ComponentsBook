import SwiftUI

@available(iOS 15.0, *, macOS 11.0, *)
public struct ComponentsBook: View {
    
    @ObservedObject var dataModel = DataModel()

    @State private var searchText = ""

    private var searchResults: [Chapter] {
        if searchText.isEmpty {
            return dataModel.chapters
        } else {
            return dataModel.chapters.filter { pages in
                guard let pages = pages.pages else { return false }
                for page in pages {
                    return page.title?.lowercased().contains(searchText.lowercased()) ?? false
                }

                return false
            }
        }
    }

    public init(dataModel: DataModel) {
        self.dataModel = dataModel
    }

    public var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { chapter in
                    Section(header: Label(chapter.type.title, systemImage: chapter.type.icon)) {
                        ForEach(chapter.pages ?? [], id: \.self) { page in
                            NavigationLink(page.subType?.title ?? page.title ?? "", destination: page.makeView())
                        }
                    }
                }
            }
            .searchable(text: $searchText)
            .listStyle(SidebarListStyle())
        }
    }
}

@available(iOS 15.0, *, macOS 11.0, *)
struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
