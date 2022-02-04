//
//  Created by Joshua Walsh on 10/26/21.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *, macOS 11.0, *)
public class DataModel: ObservableObject {
    @Published var chapters = [Chapter]()

    public init(chapters: [Chapter] = []) {
        self.chapters = chapters
    }
}

#if DEBUG
@available(iOS 14.0, *, macOS 11.0, *)
struct TestView: View {
    var body: some View {
        HStack {
            Image(systemName: "plus.message.fill")
            TextField("Test text", text: .constant("Some Values"))
        }
    }
}

@available(iOS 14.0, *, macOS 11.0, *)
extension DataModel {
    static var previewData: DataModel = DataModel(chapters: [
        .init(type: .controls, pages: [
            .init(subType: .controlType(.textFields), view: AnyView(TestView())),
            .init(subType: .controlType(.colorWells), view: AnyView(TestView())),
            .init(subType: .controlType(.buttons), view: AnyView(TestView())),
            .init(subType: .controlType(.editMenus), view: AnyView(TestView()))
        ])
    ])
}
#endif
