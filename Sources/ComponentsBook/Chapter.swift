//
//  Created by Joshua Walsh on 10/13/21.
//

import SwiftUI

@available(iOS 17.0, *)
/// A struct representing a chapter in the app.
public struct Chapter: Identifiable {

    /// The unique identifier for the chapter.
    public var id = UUID()

    /// The main type of the chapter.
    public var type: MainTypes

    /// The pages in the chapter, if any.
    public var pages: [Page]?

    /// Initializes a new `Chapter` object with the specified parameters.
    ///
    /// - Parameter type: The main type of the chapter.
    /// - Parameter pages: The pages in the chapter, if any. Defaults to `nil`.
    public init(type: MainTypes, pages: [Page]? = nil) {
        self.type = type
        self.pages = pages
    }
}

@available(iOS 17.0, *)
extension Chapter: Hashable {
    public static func == (lhs: Chapter, rhs: Chapter) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@available(iOS 17.0, *)
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
