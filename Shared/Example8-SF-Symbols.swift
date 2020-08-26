//
//  Example8-SF-Symbols.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 26.08.20.
//

import SwiftUI

struct Example8_SF_Symbols: View {
    var body: some View {
        VStack {
            Image(systemName: "thermometer.sun.fill").padding()
            Image(systemName: "thermometer.sun.fill").padding()
                .foregroundColor(.red)
            Image(systemName: "thermometer.sun.fill").padding()
                .font(.largeTitle)
            Image(systemName: "thermometer.sun.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
            
        }
    }
}

struct Example8_SF_Symbols_Previews: PreviewProvider {
    static var previews: some View {
        Example8_SF_Symbols()
    }
}
