//
//  Created by Joshua Walsh on 10/13/21.
//

import SwiftUI

public struct AnyComponent: Identifiable {
    public let id = UUID()
    public let name: String
    public let description: String?
    public let type: SubTypes
    public let view: AnyView

    public init<Content: View>(name: String, description: String?, type: SubTypes, view: Content) {
        self.name = name
        self.description = description
        self.type = type
        self.view = AnyView(view)
    }
}

public class ComponentRegistry {
    static let shared = ComponentRegistry()
    private var items = [AnyComponent]()
    
    public func register(_ item: AnyComponent) {
        items.append(item)
    }

    public func listComponents() -> [AnyComponent] {
        items.map { $0 }
    }
}
