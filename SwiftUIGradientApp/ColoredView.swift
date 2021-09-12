//
//  ColoredView.swift
//  SwiftUIGradientApp
//
//  Created by Константин Прокофьев on 12.09.2021.
//

import SwiftUI

struct ColoredView: View {
    
    var redValue: Double
    var greenValue: Double
    var blueValue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 330, height: 130)
            .foregroundColor(Color(red: redValue, green: greenValue, blue: blueValue))
            .padding(.vertical, 60.0)
            
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(redValue: 10/255, greenValue: 15/255, blueValue: 40)
    }
}
