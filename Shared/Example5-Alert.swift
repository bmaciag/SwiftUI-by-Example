//
//  Example5-Alert.swift
//  SwiftUI by Example
//
//  Created by Bartholomäus Maciag on 22.08.20.
//

import SwiftUI

struct Example5_Alert: View {
    @State private var showAlertOne = false
    @State private var showAlertTwo = false
    
    var body: some View {
        VStack {
            Button(action: {
                showAlertOne = true
            }) {
                Text("Alert with one Button")
            }
            .alert(isPresented: $showAlertOne, content: {
                Alert(title: Text("Title text"), message: Text("Optional message text"), dismissButton: .cancel())
            })
            .padding()
            
            Button(action: {
                showAlertTwo.toggle()
            }) {
                Text("Alert with two Buttons")
            }
            .alert(isPresented: $showAlertTwo, content: {
                Alert(title: Text("Title text"),
                      message: Text("Optional message text"),
                      primaryButton: .default(Text("Ok")),
                      secondaryButton: .destructive(Text("delete"), action: {
                        print("delete something...")
                }))
            })
        }
    }
}

struct Example5_Alert_Previews: PreviewProvider {
    static var previews: some View {
        Example5_Alert()
    }
}
