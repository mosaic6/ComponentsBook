import SwiftUI

@available(iOS 14.0, *, macOS 11.0, *)
public struct ComponentsBook: View  {
    
    @ObservedObject var dataModel = DataModel()

    public init(dataModel: DataModel) {
        self.dataModel = dataModel
    }

    public var body: some View {
        NavigationView {
            List(dataModel.chapters, children: \.children) { item in
                NavigationLink(item.title ?? "", destination: item.makeView())
            }
            .listStyle(SidebarListStyle())
        }
    }
}
