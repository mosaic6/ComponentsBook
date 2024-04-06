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
        VStack {
            parentView
                .padding()
                .accessibilityElement(children: .contain)
            let mirror = Mirror(reflecting: parentView)
            List {
                ForEach(Array(mirror.children), id: \.label) { child in
                    Text("\(child.label ?? "unknown"): \(String(describing: child.value))")
                        .font(.callout)
                }
            }
        }
    }
}

struct PageDetails_Previews: PreviewProvider {
    static var previews: some View {
        PageDetails(parentView: TestView(title: "Awesome"))
    }
}
