//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

public enum ViewTypes: CustomStringConvertible, CaseIterable {
    case actionSheets
    case activityViews
    case alerts
    case collections
    case imagesViews
    case pages
    case popovers
    case scrollViews
    case sheets
    case splitViews
    case tables
    case textViews
    case webViews

    public var description: String {
        return "View type of components"
    }

    public var title: String {
        switch self {
            case .actionSheets: return "Action Sheets"
            case .activityViews: return "Activity Views"
            case .alerts: return "Alerts"
            case .collections: return "Collections"
            case .imagesViews: return "Image Views"
            case .pages: return "Pages"
            case .popovers: return "Popovers"
            case .scrollViews: return "Scroll Views"
            case .sheets: return "Sheets"
            case .splitViews: return "Split Views"
            case .tables: return "Tables and Lists"
            case .textViews: return "Text Views"
            case .webViews: return "Web Views"
        }
    }
}
