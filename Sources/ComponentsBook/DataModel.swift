//
//  Created by Joshua Walsh on 10/26/21.
//

import Foundation
import SwiftUI

@available(iOS 17.0, *)
/// A data model that contains an array of `Chapter` objects.
public class DataModel: ObservableObject {

    /// The array of `Chapter` objects.
    @Published var chapters = [Chapter]()

    /**
     Initializes a new `DataModel` object with an optional array of `Chapter` objects.
     
     - Parameter chapters: An optional array of `Chapter` objects to use as the initial value for the `chapters` property. Defaults to an empty array if not provided.
     */
    public init(chapters: [Chapter] = []) {
        self.chapters = chapters
    }
}


// - MARK: - Test Data

/// Below is default or test data.
#if DEBUG
struct TestView: View {
    let title: String
    var body: some View {
        HStack {
            Image(systemName: "plus.message.fill")
            TextField(title, text: .constant("Some Values"))
                .background(Color.primary)
                .padding(.horizontal, 10)
        }
    }
}

struct TestButton: View {
    var body: some View {
        Button {
            print("Ouch! You pressed too hard!")
        } label: {
            HStack {
                Image(systemName: "message")
                    .foregroundColor(.secondary)
                Text("Send us a message")
                    .foregroundColor(.secondary)
                    .font(.title2)
            }
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct FilledButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(title, action: action)
            .foregroundColor(.white)
            .padding()
            .background(Color.accentColor)
            .cornerRadius(8)
    }
}

struct TestToolBar: View {
    var body: some View {
        HStack {
            Text("Hello, World!")
                .padding()
                .toolbar {
                    ToolbarItem(placement: .automatic) {
                        Button("Press Me") {
                            print("Pressed")
                        }
                    }
                }
        }
    }
}


@available(iOS 17.0, *)
extension DataModel {
    static var previewData: DataModel = DataModel(chapters: [
        Chapter(type: .bars, pages: [
            Page(subType: .barType(.tabBars), view: AnyView(TestToolBar()))
        ]),
        Chapter(type: .controls, pages: [
            Page(subType: .controlType(.textField), title: "Test View", view: AnyView(TestView(title: "Nice"))),
            Page(subType: .controlType(.button), title: "A button", view: AnyView(FilledButton(title: "A button", action: {}))),
            Page(subType: .controlType(.button), title: "A custom button", view: AnyView(Button {
                print("Ouch! You pressed too hard!")
            } label: {
                HStack {
                    Image(systemName: "message")
                        .foregroundColor(.primary)
                    Text("Send us a message")
                        .foregroundColor(.primary)
                        .font(.title)
                }
            })),
        ])
    ])
}
#endif
