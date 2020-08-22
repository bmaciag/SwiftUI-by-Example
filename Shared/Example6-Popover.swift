//
//  Example6-Popover.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 22.08.20.
//

import SwiftUI

struct Example6_Popover: View {
    @State private var showPopover = false
    @State private var text = ""
    
    var body: some View {
        Button("Open Popover", action: {
            showPopover.toggle()
        }).popover(isPresented: $showPopover, content: {
            VStack {
                Text("Some content...")
                TextField("Some placeholder", text: $text)
                Button("Dismiss", action: {
                    showPopover.toggle()
                })
                
            }
        })
    }
}

struct Example6_Popover_Previews: PreviewProvider {
    static var previews: some View {
        Example6_Popover()
    }
}
