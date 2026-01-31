# ComponentsBook

A component library browser for SwiftUI views.

## Requirements

- iOS 17+ / macOS 14+
- Swift 5.9+

## Installation

### Swift Package Manager

Add ComponentsBook as a dependency in your `Package.swift` or through Xcode's package manager:

```swift
dependencies: [
    .package(url: "https://github.com/mosaic6/ComponentsBook.git", from: "1.0.0")
]
```

## Usage

Import `ComponentsBook` and organize your views into chapters and pages:

```swift
import ComponentsBook

let chapters: [Chapter] = [
    Chapter(type: .controls, pages: [
        Page(subType: .controlType(.button), title: "Primary Button", view: PrimaryButton()),
        Page(subType: .controlType(.textField), title: "Search Field", view: SearchField()),
    ]),
    Chapter(type: .views, pages: [
        Page(subType: .viewType(.actionSheet), title: "Delete Confirmation", view: DeleteConfirmationSheet()),
    ])
]
```

Then present `ComponentsBook` wherever you like — for example, behind a debug menu:

```swift
struct ContentView: View {
    @State private var showComponentsBook = false

    var body: some View {
        MyAppView()
        #if DEBUG
            .sheet(isPresented: $showComponentsBook) {
                ComponentsBook(dataModel: DataModel(chapters: chapters))
            }
        #endif
    }
}
```
