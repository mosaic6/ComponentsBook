import SwiftUI

public struct ComponentsBook: View {
    
    var components = ComponentRegistry.shared.listComponents()

    @State private var searchText = ""

    public var body: some View {
        NavigationView {
            List {
                ForEach(components, id: \.id) { item in
                    Section(item.type.title) {
                        NavigationLink(item.name, destination: item.view)
                    }
                }
            }
            .listStyle(SidebarListStyle())
        }
    }
}

#Preview {
    ComponentsBook()
}
