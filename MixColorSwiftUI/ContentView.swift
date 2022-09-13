//
//  ContentView.swift
//  MixColorSwiftUI
//
//  Created by Денис Курлыков on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(red: 0.3, green: 0.8, blue: 0.9, opacity: 1)
                .ignoresSafeArea()
            VStack{
                VStack(spacing: 40) {
                    ColorView(redColor: red, greenColor: green, blueColor: blue)
                        .frame(maxWidth: .infinity, maxHeight: 200)
                        .cornerRadius(20)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5))
                        .shadow(color: .gray, radius: 20, x: -9, y: -9)
                        .padding(.bottom, 50)
                    
                    VStack {
                        TextLabelSlider(colorValue: $red, colorSlider: .red)
                        TextLabelSlider(colorValue: $green, colorSlider: .green)
                        TextLabelSlider(colorValue: $blue, colorSlider: .blue)
                    }
                    .frame(height: 150)
                    
                }
                .padding()
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


