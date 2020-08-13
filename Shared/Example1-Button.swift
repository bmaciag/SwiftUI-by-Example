//
//  Example1-Button.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 13.08.20.
//

import SwiftUI

struct Example1_Button: View {
    var body: some View {
        List {
            // Simple way if you want to use only Text
            Button("Button 1.1", action: {
                    print("Button 1.1 pressed")
            })
            
            // Even more simple way with training closure syntax
            Button("Button 1.2") {
                print("Button 1.2 pressed")
            }
            
            // More complex way where you can use also multiple elements
            Button(action: {
                print("Button 2 pressed")
            }) {
                HStack {
                    // SF Symbols Icon
                    Image(systemName: "pencil")
                    Text("Button 2")
                }
            }
        }
    }
}

struct Example1_Button_Previews: PreviewProvider {
    static var previews: some View {
        Example1_Button()
    }
}
