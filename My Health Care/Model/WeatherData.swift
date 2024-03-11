//
//  WeatherData.swift
//  My Health Care
//
//  Created by Александр Новиков on 10.03.2024.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable{
    let id: Int
}
