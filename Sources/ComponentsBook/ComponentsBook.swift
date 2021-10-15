import SwiftUI

@available(iOS 13.0, *, macOS 10.15, *)
public struct ComponentsBook: View  {
    let chapters: [Chapter]
    
    public init(chapters: [Chapter]) {
        self.chapters = chapters
    }

    public var body: some View {
        NavigationView {
            List {
                ForEach(chapters, id: \.self.type) { chapter in
                    Section {
                        ForEach(chapter.pages, id: \.self) { page in
                            NavigationLink(page.title, destination: page.makeView())
                        }
                    } header: {
                        Text(chapter.type.value.title)
                    }
                }
            }
            #if os(macOS)
            .listStyle(DefaultListStyle())
            #endif
            #if os(iOS)
            .listStyle(GroupedListStyle())
            #endif
        }
    }
}
