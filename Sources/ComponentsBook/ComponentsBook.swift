import SwiftUI

@available(iOS 14.0, *, macOS 11.0, *)
public struct ComponentsBook: View {
    
    @ObservedObject var dataModel = DataModel()

    public init(dataModel: DataModel) {
        self.dataModel = dataModel
    }

    public var body: some View {
        NavigationView {
            List {
                ForEach(dataModel.chapters, id: \.self) { chapter in
                    Section(header: Text(chapter.type.title)) {
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

@available(iOS 14.0, *, macOS 11.0, *)
struct ComponentsBook_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsBook(dataModel: DataModel.previewData)
    }
}
