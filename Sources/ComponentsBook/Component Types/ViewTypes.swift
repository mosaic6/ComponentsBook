//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

/// An enum that represents common view type components.
public enum ViewTypes: CustomStringConvertible, Equatable {
    case actionSheet
    case activityView
    case alert
    case collection
    case imagesView
    case page
    case popover
    case scrollView
    case sheet
    case splitView
    case table
    case textView
    case webView
    case custom(title: String)

    public var description: String {
        return "View type of components"
    }

    public var title: String {
        switch self {
        case .actionSheet: return "Action Sheet"
        case .activityView: return "Activity View"
        case .alert: return "Alert"
        case .collection: return "Collection"
        case .imagesView: return "Image View"
        case .page: return "Page"
        case .popover: return "Popover"
        case .scrollView: return "Scroll View"
        case .sheet: return "Sheet"
        case .splitView: return "Split View"
        case .table: return "Tables and List"
        case .textView: return "Text View"
        case .webView: return "Web View"
        case .custom(let title): return title
        }
    }
}
