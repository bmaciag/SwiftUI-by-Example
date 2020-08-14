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
                NavigationLink(destination: Example1_Button()) {
                    Text("Example 1: Button")
                }
                NavigationLink(destination: Example2_ActionSheet()) {
                    Text("Example 2: Action Sheet")
                }
            }.navigationTitle("SwiftUI by Example")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
