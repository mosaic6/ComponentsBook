//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *, macOS 10.15, *)
public protocol ComponentProtocol {
    var type: MainTypes { get set }
    var title: String { get set }
    var description: String { get set }

    associatedtype T: View

    @ViewBuilder func makeView() -> T
}

@available(iOS 13.0, *, macOS 10.15, *)
public struct Component {
    public var title: String
    public var description: String?
    public var view: AnyView

    @ViewBuilder func makeView() -> some View {
        VStack(spacing: 30) {
            Text(description ?? title)
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
