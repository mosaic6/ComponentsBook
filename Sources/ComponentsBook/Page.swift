//
//  Created by Joshua Walsh on 10/26/21.
//

import SwiftUI

/// A struct representing a page in the app.
@available(iOS 17.0, *)
public struct Page: Identifiable, Equatable {

    /// The unique identifier for the page.
    public let id = UUID()

    /// The sub-type of the page, if any.
    public let subType: SubTypes?

    /// The title of the page, if any.
    public let title: String?

    /// The description of the page, if any.
    public let description: String?

    /// The view of the page, if any.
    public let view: AnyView

    /**
     Initializes a new `Page` object with the specified parameters.
     
     - Parameter subType: The sub-type of the page, if any.
     - Parameter title: The title of the page, if any. Defaults to `nil`.
     - Parameter description: The description of the page, if any. Defaults to an empty string.
     - Parameter view: The view to display for the page.
     */
    public init(subType: SubTypes?,
                title: String? = nil,
                description: String? = "",
                view: AnyView) {
        self.subType = subType
        self.title = title
        self.description = description
        self.view = view
    }

    @ViewBuilder func makeView() -> some View {
        VStack {
            Spacer()
            view
                .padding(.all)
            Spacer()
            bottomTray
        }
        .navigationTitle(title ?? subType?.title ?? "")
    }

    @ViewBuilder var bottomTray: some View {
        VStack {
            HStack {
                Image(systemName: "text.viewfinder")
                Text(description ?? "")
            }
            .padding(.vertical)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.1))
        }
    }
}

@available(iOS 17.0, *)
extension Page: Hashable {
    public static func == (lhs: Page, rhs: Page) -> Bool {
        return lhs.id == rhs.id
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@available(iOS 17.0, *)
@resultBuilder
public enum PageArrayBuilder {
    public static func buildBlock(_ components: [Page]...) -> [Page] {
        return components.flatMap { $0 }
    }
    
    public static func buildEither(first component: [Page]) -> [Page] {
        return component
    }
    
    public static func buildEither(second component: [Page]) -> [Page] {
        return component
    }
}
