//
//  WAButtonView.swift
//  WeatherAppClone
//
//  Created by LaurenceMBP2 on 2021/9/20.
//

import SwiftUI

struct CustomWeatherButtonView: View {
    
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View {
        
        Text(title)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(textColor)
            .frame(width: 280, height: 48, alignment: .center)
            .background(backgroundColor)
            .cornerRadius(10)
        
    }
}
