//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/26/21.
//

import Foundation

@available(iOS 13.0, *, macOS 10.15, *)
public class DataModel: ObservableObject {
    @Published var chapters = [Chapter]()
}
