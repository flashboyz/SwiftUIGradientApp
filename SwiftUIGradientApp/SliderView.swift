//
//  SliderView.swift
//  SwiftUIGradientApp
//
//  Created by Константин Прокофьев on 12.09.2021.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @State private var colorValue = ""
    @State private var textFieldValue = ""
    
    var color: String
    
    var body: some View {
        HStack {
            Text("\(Int(value))")
                .frame(width: 50.0)
            
            Slider(value: $value, in: 0...255, step: 1.0)
            
            TextField("\(color)", value: $textFieldValue, formatter: NumberFormatter(), onCommit: {
                checkColorValue()
            })
                .frame(width: 60.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding(.horizontal)
    }
    private func checkColorValue() {
        if let _ = Double(textFieldValue) {
            colorValue = textFieldValue
        }
        else {
            print("error")
            return
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), color: "red")
    }
}
