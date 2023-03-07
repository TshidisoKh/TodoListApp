//
//  WeatherResponse.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct WeatherResponse: Codable {
    let latitude: Float
    let longitude: Float
    let timezone: String
    let currently: CurrentWeather
    let hourly: HourlyWeather
    let daily: DailyWeather
    let offset: Float
}
