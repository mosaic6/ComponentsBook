# ComponentsBook

A component library of SwiftUI views.

## Installation

### Swift Package Manager

The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

Once you have your Swift package set up, adding ComponentsBGook as a dependency is as easy as adding it to the dependencies value of your Package.swift.

```
dependencies: [
    .Package(url: "https://github.com/mosaic6/ComponentsBook.git", majorVersion: 1)
]
```

## Usage

- Add a new application target to your existing application

<img width="731" alt="Screen Shot 2021-10-15 at 3 49 37 PM" src="https://user-images.githubusercontent.com/735492/137545554-b5dc408b-4760-458a-b340-2829ffbad8e0.png">

- Link `ComponentsBook` to `Frameworks, Libraries, and Embedded Content` in your new target

<img width="1129" alt="Screen Shot 2021-10-15 at 3 51 33 PM" src="https://user-images.githubusercontent.com/735492/137545736-331abe9c-a8ee-4665-8d37-09f73e53beda.png">

- Import `ComponentsBook` in `ContentView`

```
import ComponentsBook
```

- Add an array of your SwiftUI views as an array of `Chapter` types

```
let chapters: [Chapter] = [
    /// Group Button controls here
    .init(type: .init(value: .controls(.buttons)), pages: [
        .init(title: "Example Button", description: nil, view: AnyView(ExampleButton()))
    ]),
    /// Group Page views here
    .init(type: .init(value: .views(.pages)), pages: [
        .init(title: "Empty View", description: nil, view: AnyView(EmptyView()))
    ])
]
```

- Update the `body` property with `ComponentBook(chapters: chapters)`

```
var body: some View {
    ComponentsBook(chapters: chapters)
}
```

Build and run and have fun!
