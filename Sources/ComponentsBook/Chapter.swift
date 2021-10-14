//
//  File.swift
//  
//
//  Created by Joshua Walsh on 10/13/21.
//

import Foundation
import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct Chapter: Identifiable {
    public let id = UUID()
    public let type: ComponentType
    public let pages: [Component]
}
