//
//  Created by Joshua Walsh on 10/13/21.
//

import SwiftUI

public struct Chapter: Identifiable {
    public var id = UUID()
    
    public var type: MainTypes
    public var pages: [Page]?

    public init(type: MainTypes, pages: [Page]?) {
        self.type = type
        self.pages = pages
    }
}

extension Chapter: Hashable {
    public static func == (lhs: Chapter, rhs: Chapter) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@resultBuilder
public enum ChapterArrayBuilder {
    public static func buildBlock(_ components: [Chapter]...) -> [Chapter] {
        return components.flatMap { $0 }
    }
    
    public static func buildEither(first component: [Chapter]) -> [Chapter] {
        return component
    }
    
    public static func buildEither(second component: [Chapter]) -> [Chapter] {
        return component
    }
}
