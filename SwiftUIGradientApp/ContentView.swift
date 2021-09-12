//
//  ContentView.swift
//  SwiftUIGradientApp
//
//  Created by Константин Прокофьев on 12.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack{
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack {
                ColoredView(redValue: red/255, greenValue: green/255, blueValue: blue/255)
                SliderView(value: $red, color: "red")
                    .accentColor(.red)
                SliderView(value: $green, color: "green")
                    .accentColor(.green)
                SliderView(value: $blue, color: "blue")
                    .accentColor(.blue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
