//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

public enum CustomTypes: CustomStringConvertible, CaseIterable {
    public static var allCases: [CustomTypes] {
        return [.some("")]
    }

    case some(String)

    public var description: String {
        return "Custom type of components"
    }

    public var title: String {
        switch self {
            case .some(let name): return name
        }
    }
}
