//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/26/21.
//

import Foundation

@available(iOS 14.0, *, macOS 11.0, *)
public class DataModel: ObservableObject {
    @Published var chapters = [Chapter]()

    public init(chapters: [Chapter] = []) {
        self.chapters = chapters
    }
}
