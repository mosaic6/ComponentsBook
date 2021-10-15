//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation

/// The type in which to categorize a view
public enum MainTypes: CustomStringConvertible {
    case bars(BarTypes)
    case controls(ControlTypes)
    case views(ViewTypes)
    case extensions(ExtensionTypes)
    case custom(CustomTypes)

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

public enum BarTypes: CustomStringConvertible {
    case navigationBars
    case searchBars
    case sidebars
    case statusBars
    case tabBars
    case toolbars

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
        }
    }
}

public enum ControlTypes: CustomStringConvertible {
    case buttons
    case colorWells
    case contextMenus
    case editMenus
    case labels
    case pageControls
    case pickers
    case progressIndicators
    case refreshContentControls
    case segmentedControls
    case sliders
    case steppers
    case switches
    case textFields

    public var description: String {
        return "Control type of components"
    }

    public var title: String {
        switch self {
            case .buttons: return "Buttons"
            case .colorWells: return "Color Wells"
            case .contextMenus: return "Context Menus"
            case .editMenus: return "Edit Menus"
            case .labels: return "Labels"
            case .pageControls: return "Page Controls"
            case .pickers: return "Pickers"
            case .progressIndicators: return "Progress Indicators"
            case .refreshContentControls: return "Refresh Controls"
            case .segmentedControls: return "Segmented Controls"
            case .sliders: return "Sliders"
            case .steppers: return "Steppers"
            case .switches: return "Switches"
            case .textFields: return "Text Fields"
        }
    }
}

public enum ViewTypes: CustomStringConvertible {
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

public enum ExtensionTypes: CustomStringConvertible {
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

public enum CustomTypes: CustomStringConvertible {
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

/// The type in which to categorize a view
public struct ComponentType {
    public var id = UUID()
    public var value: MainTypes

    public init(value: MainTypes) {
        self.value = value
    }
}

@available(iOS 13.0, *, macOS 10.15, *)
extension ComponentType: Hashable {
    public static func == (lhs: ComponentType, rhs: ComponentType) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
