//
//  ContentView.swift
//  Shared
//
//  Created by Bartholomäus Maciag on 13.08.20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Example1_Button()) { Text("Example 1: Button") }
            }.navigationTitle("SwiftUI by Example")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
