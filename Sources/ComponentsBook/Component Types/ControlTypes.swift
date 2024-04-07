//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

/// An enum that represents common control type components.
public enum ControlTypes: CustomStringConvertible, Equatable {
    case button
    case colorWell
    case contextMenu
    case editMenu
    case label
    case pageControl
    case picker
    case progressIndicator
    case refreshContentControl
    case segmentedControl
    case slider
    case stepper
    case switche
    case textField
    case custom(title: String)

    public var description: String {
        return "Control type of components"
    }

    public var title: String {
        switch self {
        case .button: return "Button"
        case .colorWell: return "Color Well"
        case .contextMenu: return "Context Menu"
        case .editMenu: return "Edit Menu"
        case .label: return "Label"
        case .pageControl: return "Page Control"
        case .picker: return "Picker"
        case .progressIndicator: return "Progress Indicator"
        case .refreshContentControl: return "Refresh Control"
        case .segmentedControl: return "Segmented Control"
        case .slider: return "Slider"
        case .stepper: return "Stepper"
        case .switche: return "Switche"
        case .textField: return "Text Field"
        case .custom(let title): return title
        }
    }
}
