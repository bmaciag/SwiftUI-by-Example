//
//  Example2-ActionSheet.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 14.08.20.
//

import SwiftUI

struct Example2_ActionSheet: View {
    @State private var showSheet = false
    
    var body: some View {
        Button("Show Sheet", action: {
            self.showSheet = true
        })
        .actionSheet(isPresented: $showSheet) {
            ActionSheet(title: Text("Some Title"),
                        message: Text("A longer description can go here..."),
                        buttons: [
                            .default(Text("Save"), action: {
                                print("Save selected")
                            }),
                            .destructive(Text("Delete"), action: {
                                print("Delete selected")
                            }),
                            .cancel()
                        ])
        }
    }
}

struct Example2_ActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        Example2_ActionSheet()
    }
}
