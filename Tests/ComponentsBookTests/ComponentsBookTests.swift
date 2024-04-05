import XCTest
import SwiftUI
@testable import ComponentsBook

@available(iOS 17.0, *)
final class PageAndChapterTests: XCTestCase {

    func testPageInitialization() {
        let view = AnyView(Text("Hello, World!"))
        let page = Page(subType: .none, title: "Test Page", description: "This is a test page.", view: view)

        XCTAssertEqual(page.title, "Test Page")
        XCTAssertEqual(page.description, "This is a test page.")
        XCTAssertEqual(page.subType, .none)
    }

    func testChapterInitialization() {
        let view = AnyView(Text("Hello, World!"))
        let page = Page(subType: .viewType(.custom(title: "")), title: "Test Page", description: "This is a test page.", view: view)
        let chapter = Chapter(type: .views, pages: [page])

        XCTAssertEqual(chapter.pages?.count, 1)
        XCTAssertEqual(chapter.pages?[0].title, "Test Page")
        XCTAssertEqual(chapter.pages?[0].description, "This is a test page.")
        XCTAssertEqual(chapter.pages?[0].subType, .viewType(.custom(title: "")))
    }

    static var allTests = [
        ("testPageInitialization", testPageInitialization),
        ("testChapterInitialization", testChapterInitialization)
    ]
}
