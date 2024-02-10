//
//  WeatherData.swift
//  weather app
//
//  Created by fahad samara on 2/10/24.
//

import Foundation
// Model
struct WeatherData: Identifiable {
    let id = UUID()
    let dayOfWeek: String
    let imageName: String
    let temperature: Int
}
