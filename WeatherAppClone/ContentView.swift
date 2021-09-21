//
//  ContentView.swift
//  WeatherAppClone
//
//  Created by Laurence Chen on 2021/9/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            CustomBackGroundView(isNight: $isNight)
            
            VStack {
                Text("Taipei, Taiwan")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding(.top, 20)
                VStack (spacing:8){
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("31ºC")
                        .font(.system(size: 70, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                }
                Spacer()
                
                HStack(alignment: .center, spacing: 20) {
                    CustomWeatherDayView(dayOfWeek: "TUE",
                                         imageName: "sun.max.fill",
                                         temparature: 74)
                    CustomWeatherDayView(dayOfWeek: "WED",
                                         imageName: "cloud.fill",
                                         temparature: 70)
                    CustomWeatherDayView(dayOfWeek: "THU",
                                         imageName: "cloud.drizzle.fill",
                                         temparature: 69)
                    CustomWeatherDayView(dayOfWeek: "FRI",
                                         imageName: "cloud.sun.rain",
                                         temparature: 64)
                    CustomWeatherDayView(dayOfWeek: "SAT",
                                         imageName: "cloud.heavyrain.fill",
                                         temparature: 66)
                }
                
                Spacer()
                
                Button(action: {
                    isNight.toggle()
                }, label: {
                    CustomWeatherButtonView(title: "Change Day Time",
                                            textColor: .blue,
                                            backgroundColor: .white)
                })
                

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

struct CustomWeatherDayView: View {
    
    var dayOfWeek:String
    var imageName:String
    var temparature:Int
    
    var body: some View {
        VStack (spacing: 16){
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .regular, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.template)
                .resizable()
                .foregroundColor(.white)
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
            Text("\(temparature)")
                .font(.system(size: 20, weight: .regular, design: .default))
                .foregroundColor(.white)
        }
    }
}





