//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation

public struct ComponentType {
    public var id = UUID()
    public var value: MainTypes

    public init(value: MainTypes) {
        self.value = value
    }
}

@available(iOS 13.0, *, macOS 10.15, *)
extension ComponentType: Hashable {
    public static func == (lhs: ComponentType, rhs: ComponentType) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
