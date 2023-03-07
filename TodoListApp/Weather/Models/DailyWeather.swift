//
//  DailyWeather.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct DailyWeather: Codable {
    let summary: String
    let icon: String
    let data: [DailyWeatherEntry]
}
