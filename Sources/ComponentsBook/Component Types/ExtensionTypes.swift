//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

/// An enum that represents common extension type components.
public enum ExtensionTypes: CustomStringConvertible, Equatable {
    case customKeyboard
    case fileProvider
    case messaging
    case photoEditing
    case sharingAndAction
    case custom(title: String)

    public var description: String {
        return "Extension type of components"
    }

    public var title: String {
        switch self {
        case .customKeyboard: return "Custom Keyboard"
        case .fileProvider: return "File Provider"
        case .messaging: return "Messaging"
        case .photoEditing: return "Photo Editing"
        case .sharingAndAction: return "Sharing and Actions"
        case .custom(let title): return title
        }
    }
}
