//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *, macOS 10.15, *)
public struct Component {
    public var subType: MainTypes
    public var title: String
    public var description: String?
    public var view: AnyView

    public init(subType: MainTypes, title: String = "", description: String? = "", view: AnyView) {
        self.subType = subType
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

@available(iOS 13.0, *, macOS 10.15, *)
extension Component: Hashable {
    public static func == (lhs: Component, rhs: Component) -> Bool {
        return lhs.title == rhs.title
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(title)
    }
}
