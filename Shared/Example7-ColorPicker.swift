//
//  Example7-ColorPicker.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 26.08.20.
//

import SwiftUI

struct Example7_ColorPicker: View {
    @State private var bgColor =
            Color(.sRGB, red: 0.5, green: 0.9, blue: 0.2)
    
    var body: some View {
        VStack {
            ColorPicker("Color", selection: $bgColor)
            Text(bgColor.description)
        }
    }
}

struct Example7_ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        Example7_ColorPicker()
    }
}
