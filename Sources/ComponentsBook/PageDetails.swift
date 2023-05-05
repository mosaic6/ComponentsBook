//
//  PageDetails.swift
//  
//
//  Created by Joshua Walsh on 5/4/23.
//

import Foundation
import SwiftUI

struct PageDetails: View {
    let parentView: AnyView
        
    var body: some View {
        VStack {
            parentView
        }
    }
}

struct PageDetails_Previews: PreviewProvider {
    static var previews: some View {
        PageDetails(parentView: AnyView(Text("hello")))
    }
}
