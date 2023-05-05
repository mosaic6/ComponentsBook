import SwiftUI

public struct ComponentsBook: View {
    
    @ObservedObject var dataModel = DataModel()

    @State private var searchText = ""

    private var searchResults: [Chapter] {
        if searchText.isEmpty {
            return dataModel.chapters
        } else {
            return dataModel.chapters.filter { pages in
                guard let pages = pages.pages else { return false }
                return pages.map { $0.title }.contains(searchText)
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
            .listStyle(SidebarListStyle())
        }
    }
}

struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
