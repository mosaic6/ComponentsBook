//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation
/// The type in which to categorize a component
public enum MainTypes: CustomStringConvertible, CaseIterable, Identifiable {
    public var id: UUID {
        return UUID()
    }
    public static var allCases: [MainTypes] {
        return [
            .bars(.toolbars),
            .controls(.colorWells),
            .custom(.some("")),
            .extensions(.sharingAndActions),
            .views(.pages)]
    }

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

    public var subTypes: String {
        switch self {
            case .bars(let type):
                return type.title
            case .controls(let type):
                return type.title
            case .custom(let type):
                return type.title
            case .extensions(let type):
                return type.title
            case .views(let type):
                return type.title
        }
    }
}
