import SwiftUI

@available(iOS 17.0, *)
public struct ComponentsBook: View {
    
    @ObservedObject var dataModel = DataModel()

    @State private var searchText = ""

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
                    Section(header: Label(chapter.type.title, systemImage: chapter.type.icon)) {
                        ForEach(chapter.pages ?? [], id: \.self) { page in
                            NavigationLink(page.title ?? page.subType?.title ?? "", destination: page.makeView())
                        }
                    }
                }
            }
            .listStyle(SidebarListStyle())

            VStack(alignment: .center) {
                Text("Select the view you want to inspect from the side menu.")
                    .font(Font.largeTitle)
                    .padding(.all)
            }
        }
        .onAppear {
//            let device = UIDevice.current
//            if device.model == "iPad" && device.orientation.isLandscape {
//                // TODO: Select view
//            }
        }
    }
}

@available(iOS 17.0, *)
struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
