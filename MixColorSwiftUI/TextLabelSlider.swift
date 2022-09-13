//
//  Text+SliderView.swift
//  MixColorSwiftUI
//
//  Created by Денис Курлыков on 13.09.2022.
//

import SwiftUI

struct TextLabelSlider: View {
    @Binding var colorValue: Double
    let colorSlider: Color
    
    var body: some View {
        HStack(spacing: 25) {
            Text("\(lround(colorValue))")
                .frame(width: 55, alignment: .leading)
                .font(.title)
                .foregroundColor(.black)
            Slider(value: $colorValue, in: 0...255, step: 1)
                .accentColor(colorSlider)
        }
    }
}

struct Text_SliderView_Previews: PreviewProvider {
    static var previews: some View {
        TextLabelSlider(colorValue: .constant(50), colorSlider: .red)
    }
}
