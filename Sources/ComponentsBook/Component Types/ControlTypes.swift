//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

public enum ControlTypes: CustomStringConvertible, CaseIterable {
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
