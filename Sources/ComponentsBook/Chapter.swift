//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *, macOS 11.0, *)
public struct Chapter: Identifiable {
    public var id = UUID()
    
    public var type: MainTypes
    public var pages: [Page]?

    public init(type: MainTypes, pages: [Page]?) {
        self.type = type
        self.pages = pages
    }
}

@available(iOS 14.0, *, macOS 11.0, *)
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
        self.title = subType?.title ?? title
        self.description = description
        self.view = view
    }

    @ViewBuilder func makeView() -> some View {
        VStack {
            view
        }
    }
}

@available(iOS 14.0, *, macOS 11.0, *)
extension Chapter: Hashable {
    public static func == (lhs: Chapter, rhs: Chapter) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@available(iOS 14.0, *, macOS 11.0, *)
extension Page: Hashable {
    public static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
