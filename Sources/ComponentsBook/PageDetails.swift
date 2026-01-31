//
//  PageDetails.swift
//  
//
//  Created by Joshua Walsh on 5/4/23.
//

import Foundation
import SwiftUI

struct PageDetails<Content: View>: View {
    let parentView: Content
        
    var body: some View {
        parentView
            .padding()
            .accessibilityElement(children: .contain)
    }
}

#Preview {
    PageDetails(parentView: Text("Hi").font(.callout).foregroundStyle(Color.blue))
}
