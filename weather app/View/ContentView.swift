//
//  ContentView.swift
//  weather app
//
//  Created by fahad samara on 2/6/24.
//

import SwiftUI

// View
struct ContentView: View {
    @ObservedObject var viewModel = WeatherViewModel()

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.teal ,.black]), startPoint: .topTrailing, endPoint: .leading)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Cypress, CY").font(.title).foregroundColor(.white).padding()
                
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.rain.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width:183, height: 183)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("13°").font(.system(size: 70,weight: .medium)).foregroundColor(.white)
                }.padding(.bottom,40)

                HStack(spacing:15) {
                    ForEach(viewModel.thisWeekData) { weather in
                        WeatherDayView(weather: weather)
                    }
                }
                
                Text("Next Week").font(.title).foregroundColor(.white).padding()
                
                HStack(spacing:15) {
                    ForEach(viewModel.nextWeekData) { weather in
                        WeatherDayView(weather: weather)
                    }
                }
                
                Spacer()
            }
        }
    }
}

// Subview
struct WeatherDayView: View {
    let weather: WeatherData

    var body: some View {
        VStack(spacing: 10){
            Text(weather.dayOfWeek)
                .foregroundColor(.white)
                .font(.headline)
                .italic()
                .bold()
            
            Image(systemName: weather.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 56, height: 56)
                .aspectRatio(contentMode: .fit)
            
            Text("\(weather.temperature)°")
                .foregroundColor(.white)
        }
    }
}



#Preview {
    ContentView()
}

