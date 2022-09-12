//
//  ContentView.swift
//  MixColorSwiftUI
//
//  Created by Денис Курлыков on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var stateRedSliderValue = Double.random(in: 0...255)
    @State private var stateGreenowSliderValue = Double.random(in: 0...255)
    @State private var stateBlueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0.3, green: 0.8, blue: 0.9, opacity: 1)
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: .infinity, maxHeight: 200)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                    .foregroundColor(
                        Color(red: stateRedSliderValue / 255,
                              green: stateGreenowSliderValue / 255,
                              blue: stateBlueSliderValue / 255,
                              opacity: 1)
                        
                    )
                    .padding(.bottom, 50)
                ColorSliderView(colorValue: $stateRedSliderValue, colorSlider: .red)
                ColorSliderView(colorValue: $stateGreenowSliderValue, colorSlider: .green)
                ColorSliderView(colorValue: $stateBlueSliderValue, colorSlider: .blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var colorValue: Double
    //@Binding var textFildValue: String
    let colorSlider: Color
    
    var body: some View {
        HStack {
            Text("\(lround(colorValue))")
                .font(.title)
                .foregroundColor(.black)
            Slider(value: $colorValue, in: 0...255, step: 1)
                .accentColor(colorSlider)
        }
    }
}

