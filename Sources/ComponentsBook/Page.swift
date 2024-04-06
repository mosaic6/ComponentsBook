//
//
//

import SwiftUI

public struct Page: Identifiable {
    public let id = UUID()

    public let subType: SubTypes?
    public let title: String?
    public let description: String?
    public let view: AnyView

    public init(subType: SubTypes?,
                title: String? = "",
                description: String? = "",
                view: AnyView) {
        self.subType = subType
        self.title = title ?? subType?.title
        self.description = description
        self.view = view
    }

    @ViewBuilder func makeView() -> some View {
        PageDetails(parentView: view)
    }
}

extension Page: Hashable {
    public static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@resultBuilder
public enum PageArrayBuilder {
    public static func buildBlock(_ components: [Page]...) -> [Page] {
        return components.flatMap { $0 }
    }
    
    public static func buildEither(first component: [Page]) -> [Page] {
        return component
    }
    
    public static func buildEither(second component: [Page]) -> [Page] {
        return component
    }
}
