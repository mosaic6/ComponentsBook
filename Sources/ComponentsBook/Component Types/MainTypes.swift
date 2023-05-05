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
    case custom(title: String)

    public var description: String {
        return "Main type of components"
    }

    public var title: String {
        switch self {
        case .bars: return "Bars"
        case .controls: return "Controls"
        case .custom(let title): return title
        case .extensions: return "Extensions"
        case .views: return "Views"
        }
    }

    public var icon: String {
        switch self {
            case .bars: return "chart.bar"
            case .controls: return "switch.2"
            case .custom: return "function"
            case .extensions: return "puzzlepiece"
            case .views: return "viewfinder"
        }
    }
}
