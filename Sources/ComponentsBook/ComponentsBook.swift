import SwiftUI

@available(iOS 17.0, *)
public struct ComponentsBook: View {
    
    @ObservedObject var dataModel = DataModel()

    @State private var searchText = ""
    @State private var showTopSection = true
    @State private var showNestedSection = true

    @Environment(\.isSearching) private var isSearching

    private var searchResults: [Chapter] {
        if searchText.isEmpty {
            return dataModel.chapters
        } else {
            return dataModel.chapters.filter { pages in
                guard let pages = pages.pages else { return false }
                return pages.map {
                    $0.title
                }.contains(
                    searchText
                )
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
                    Section(isExpanded: $showTopSection) {
                        ForEach(chapter.pages ?? [], id: \.self) { page in
                            NavigationLink {
                                page.makeView()
                            } label: {
                                HStack {
                                    Text(page.title ?? page.subType?.title ?? "")
                                }
                            }
                        }
                    } header: {
                        Label(chapter.type.title, systemImage: chapter.type.icon)
                    }
                }
            }
//            .searchable(text: $searchText)
            .listStyle(SidebarListStyle())
            VStack(alignment: .center) {
                Text("Select the view you want to inspect from the side menu.")
                    .font(Font.largeTitle)
                    .padding(.all)
            }
        }
    }
}

@available(iOS 17.0, *)
struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
