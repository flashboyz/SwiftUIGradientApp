//
//  SliderView.swift
//  SwiftUIGradientApp
//
//  Created by Константин Прокофьев on 12.09.2021.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double

    @State private var textFieldValue = ""
    @State private var showAlert: Bool = false
    
    var color: String
    
    var body: some View {
        HStack {
            Text("\(Int(value))")
                .frame(width: 50.0)
            
            Slider(value: $value, in: 0...255, step: 1.0)
                .onChange(of: value) { sliderValue in
                    textFieldValue = "\(lround(sliderValue))"
                }
            
            TextField("\(color)", text: $textFieldValue, onCommit:
                        checkColorValue)
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Неверные данные!"),
                        message: Text("Введите значение от 0 до 255")
                    )}
                .frame(width: 60.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .onAppear {
            textFieldValue = "\(lround(value))"
        }
        .padding(.horizontal)
    }
    
    private func checkColorValue() {
        if let textValue = Int(textFieldValue), (0...255).contains(textValue) {
            value = Double(textValue)
        }
        else {
            showAlert = true
            value = 0
            textFieldValue = "0"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: Binding.constant(0), color: "red")
    }
}
