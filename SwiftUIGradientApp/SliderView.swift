//
//  SliderView.swift
//  SwiftUIGradientApp
//
//  Created by Константин Прокофьев on 12.09.2021.
//

import SwiftUI

struct SliderView: View {
    @State private var value: Double = 0
    var label: String
    var body: some View {
        HStack {
            Text("\(Int(value))")
            Slider(value: $value, in: 0...255, step: 1.0)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(label: "Label")
            .padding()
    }
}
