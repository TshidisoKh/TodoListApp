//
//  DailyWeather.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct Main: Decodable {
    let humidity: Int
        let pressure: Int
        let temp: Double
        let tempMax: Int
        let tempMin: Int
    let feels_like: String
    let visibility: Int
        
}

