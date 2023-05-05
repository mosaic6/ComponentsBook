//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

public enum BarTypes: CustomStringConvertible {
    case navigationBars
    case searchBars
    case sidebars
    case statusBars
    case tabBars
    case toolbars
    case custom(title: String)

    public var description: String {
        return "Bar type of components"
    }

    public var title: String {
        switch self {
        case .navigationBars: return "Navigation Bars"
        case .searchBars: return "Search Bars"
        case .sidebars: return "Side Bars"
        case .statusBars: return "Status Bars"
        case .tabBars: return "Tab Bars"
        case .toolbars: return "Tool Bars"
        case .custom(let title): return title
        }
    }
}
