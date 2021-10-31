//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation
/// The type in which to categorize a component
public enum MainTypes: CustomStringConvertible {
    case bars
    case controls
    case views
    case extensions
    case custom

    public var description: String {
        return "Main type of components"
    }

    public var title: String {
        switch self {
            case .bars: return "Bars"
            case .controls: return "Controls"
            case .custom: return "Custom"
            case .extensions: return "Extentions"
            case .views: return "Views"
        }
    }
}
