//
//  Example3-Sheet.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 14.08.20.
//

import SwiftUI

struct Example3_Sheet_Second: View {
    @Binding var showSheet: Bool
    
    var body: some View {
        Button("Dismiss again", action: {
            showSheet = false
        })
    }
}

struct Example3_Sheet: View {
    @State var showSheet = false
    
    var body: some View {
        Button("Show Sheet", action: {
            showSheet = true
        })
        .sheet(isPresented: $showSheet) {
            Example3_Sheet_Second(showSheet: $showSheet)
        }
    }
}

struct Example3_Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Example3_Sheet()
    }
}
