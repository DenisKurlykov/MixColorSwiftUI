//
//  ColorView.swift
//  MixColorSwiftUI
//
//  Created by Денис Курлыков on 13.09.2022.
//

import SwiftUI

struct ColorView: View {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(
            red: redColor / 255,
            green: greenColor / 255,
            blue: blueColor / 255
        )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(redColor: 10, greenColor: 70, blueColor: 10)
    }
}
