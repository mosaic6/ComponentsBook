//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation

/// The type in which to categorize a view
struct ComponentType: Hashable {
    public var id = UUID()
    var value: String
}
