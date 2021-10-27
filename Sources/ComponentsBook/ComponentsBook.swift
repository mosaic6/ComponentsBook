import SwiftUI

@available(iOS 13.0, *, macOS 11.0, *)
public struct ComponentsBook: View  {
    
    @ObservedObject var dataModel = DataModel()

    public var body: some View {
        NavigationView {
            List(dataModel.chapters, children: \.children) { item in
                NavigationLink(item.title, destination: item.makeView())
            }
            .listStyle(SidebarListStyle())
        }
    }
}
