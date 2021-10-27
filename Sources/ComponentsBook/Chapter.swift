//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *, macOS 11.0, *)
public struct Chapter: Identifiable {
    public let id = UUID()
    
    public var type: MainTypes
    public let children: [Page]?

    public init(type: MainTypes, children: [Page]?) {
        self.type = type
        self.children = children
    }
}

@available(iOS 14.0, *, macOS 11.0, *)
public struct Page: Identifiable {
    public let id = UUID()

    public let type: MainTypes
    public let title: String?
    public let description: String?
    public let view: AnyView

    public init(type: MainTypes, title: String? = "", description: String? = "", view: AnyView) {
        self.type = type
        self.title = title
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
extension Page: Hashable {
    public static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.id == rhs.id
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
