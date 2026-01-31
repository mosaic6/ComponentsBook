import SwiftUI

public struct ComponentsBook: View {

    @ObservedObject var dataModel = DataModel()

    @State private var searchText = ""

    private var searchResults: [Chapter] {
        if searchText.isEmpty {
            return dataModel.chapters
        } else {
            return dataModel.chapters.filter { chapter in
                guard let pages = chapter.pages else { return false }
                return pages.contains { page in
                    let title = page.title ?? page.subType?.title ?? ""
                    return title.localizedCaseInsensitiveContains(searchText)
                }
            }
        }
    }

    public init(dataModel: DataModel) {
        self.dataModel = dataModel
    }

    public var body: some View {
        NavigationSplitView {
            List {
                ForEach(searchResults, id: \.self) { chapter in
                    Section {
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
            .listStyle(SidebarListStyle())
            .searchable(text: $searchText)
        } detail: {
            VStack(alignment: .center) {
                Text("Select the view you want to inspect from the side menu.")
                    .font(Font.largeTitle)
                    .padding(.all)
            }
        }
    }
}

struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
