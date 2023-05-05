//
//  Created by Joshua Walsh on 10/30/21.
//

import Foundation


public enum SubTypes {
    case barType(BarTypes)
    case controlType(ControlTypes)
    case customType(CustomTypes)
    case extensionType(ExtensionTypes)
    case viewType(ViewTypes)
    case custom(CustomTypes)

    var title: String {
        switch self {
        case .barType(let types):
            return types.title
        case .controlType(let types):
            return types.title
        case .customType(let types):
            return types.title
        case .extensionType(let types):
            return types.title
        case .viewType(let types):
            return types.title
        case .custom(let types):
            return types.title
        }
    }
}
