//
//  SwiftUIView.swift
//  
//
//  Created by Joshua Walsh on 5/4/23.
//

import Foundation
import SwiftUI
import ViewInspector

struct PageDetails: View {
    let parentView: AnyView
        
    var body: some View {
        VStack {
            EmptyView()
        }
        .onAppear {
            do {
                try printName()
            } catch {
                print(error)
            }
        }
    }
    
    func printName() throws {
        guard let name = try? parentView.inspect().viewModifierContent() else {
            return
        }
        print(name)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PageDetails(parentView: AnyView(
            Text("Hello")
                .background(Color.blue)
                .foregroundColor(.red)
                .cornerRadius(4)
                .padding(4)
        ))
    }
}
