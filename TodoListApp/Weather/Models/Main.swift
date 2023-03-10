//
//  DailyWeather.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct Main: Decodable {
    let temp: Double
    let  feels_like: Double
    let  temp_min: Double
    let  temp_max: Double
    let  pressure: Int
    let  humidity: Int
}

