//
//  ContentView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 11.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            //
            BackgroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Cupretino", state: "CA")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 24)
                
                
                //создается горизонтальный стэк с использованием пяти структур с разными конфигурациями
                HStack(spacing: 20) {
                    WeatherDetailStackView(dayOfWeek: "tue",
                                           imageName: "cloud.sun.fill",
                                           temperature: 24)
                    WeatherDetailStackView(dayOfWeek: "wed",
                                           imageName: "cloud.fog.fill",
                                           temperature: 18)
                    WeatherDetailStackView(dayOfWeek: "thu",
                                           imageName: "wind",
                                           temperature: 20)
                    WeatherDetailStackView(dayOfWeek: "fri",
                                           imageName: "sun.max.fill",
                                           temperature: 30)
                    WeatherDetailStackView(dayOfWeek: "sat",
                                           imageName: "cloud.rain.fill",
                                           temperature: 16)
                }
                //Функция для распределения стэка по всей высоте экрана равномерно
                Spacer()
                //Сначала создается кнопка и указывается таргет, то есть что эта кнопка будет делать при нажатии, затем уже настраивается отображение кнопки
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonTitle: "Change day time",textColor: .white,backgroundColor: .mint)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDetailStackView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .rounded))
                .foregroundStyle(.white)
                .textCase(.uppercase)
            Image(systemName: imageName)
                .renderingMode(.original)
                .symbolRenderingMode(.palette)
                .resizable()
                .foregroundStyle(.blue, .orange, .yellow)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                
            Text("\(temperature)˚")
                .font(.system(size: 20, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
///фоновый цвет
struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        
        ContainerRelativeShape()
            .fill(!isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    var state: String
    
    var body: some View {
        Text("\(cityName), \(state)")
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundStyle(.white)
            .padding()
    }
}

///Вертикальный стэк для тайтла, изображения и текста с температурой
struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)˚")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
            
        }
        //Отступ между вертикальным стеком и горизонтальным. Указывается откуда отступ и какой
        .padding(.bottom,40)
    }
}


