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
    public var title: String?
    public var description: String?
    public var view: AnyView
    public let children: [Chapter]?

    public init(type: MainTypes, title: String?, description: String?, view: AnyView, children: [Chapter]?) {
        self.type = type
        self.title = title
        self.description = description
        self.view = view
        self.children = children
    }

    @ViewBuilder func makeView() -> some View {
        VStack {
            view
        }
    }
}
