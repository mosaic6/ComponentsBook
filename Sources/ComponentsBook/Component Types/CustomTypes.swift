//
//  Created by Joshua Walsh on 10/15/21.
//

import Foundation

/// An enum that represents custom type components.
public enum CustomTypes: CustomStringConvertible, CaseIterable, Equatable {
    public static var allCases: [CustomTypes] {
        return [.some("")]
    }

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
