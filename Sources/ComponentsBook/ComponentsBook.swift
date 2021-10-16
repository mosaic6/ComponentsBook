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
                            Section {
                                ForEach(MainTypes.allCases) { _ in
                                    NavigationLink(page.title, destination: page.makeView())
                                }
                            } header: {
                                switch chapter.type.value {
                                    case .bars(let type):
                                        Text(type.title)
                                    case .controls(let type):
                                        Text(type.title)
                                    case .views(let type):
                                        Text(type.title)
                                    case .extensions(let type):
                                        Text(type.title)
                                    case .custom(let type):
                                        Text(type.title)
                                }
                            }
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
