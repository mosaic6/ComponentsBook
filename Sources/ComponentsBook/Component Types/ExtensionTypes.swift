//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

public enum ExtensionTypes: CustomStringConvertible, CaseIterable {
    case customKeyboards
    case fileProviders
    case messaging
    case photoEditing
    case sharingAndActions

    public var description: String {
        return "Extention type of components"
    }

    public var title: String {
        switch self {
            case .customKeyboards: return "Custom Keyboards"
            case .fileProviders: return "File Providers"
            case .messaging: return "Messaging"
            case .photoEditing: return "Photo Editing"
            case .sharingAndActions: return "Sharing and Actions"
        }
    }
}
