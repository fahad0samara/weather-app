//
//  WeatherViewModel.swift
//  weather app
//
//  Created by fahad samara on 2/10/24.
//

import Foundation

class WeatherViewModel: ObservableObject {
    @Published var thisWeekData = [
        WeatherData(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 18),
        WeatherData(dayOfWeek: "WED", imageName: "cloud.sun.rain.fill", temperature: 14),
        WeatherData(dayOfWeek: "THU", imageName: "cloud.rain.fill", temperature: 10),
        WeatherData(dayOfWeek: "FRI", imageName: "cloud.snow.fill", temperature: 3),
        WeatherData(dayOfWeek: "SAT", imageName: "snowflake", temperature: -2)
    ]
    
    @Published var nextWeekData = [
        WeatherData(dayOfWeek: "SUN", imageName: "snowflake", temperature: 4),
        WeatherData(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 17),
        WeatherData(dayOfWeek: "TUE", imageName: "cloud.sun.rain.fill", temperature: 15),
        WeatherData(dayOfWeek: "WED", imageName: "cloud.rain.fill", temperature: 12),
        WeatherData(dayOfWeek: "THU", imageName: "cloud.snow.fill", temperature: 5)
    ]
}
