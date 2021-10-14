//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation

/// The type in which to categorize a view
public struct ComponentType: Hashable {
    public var id = UUID()
    public var value: String
}
