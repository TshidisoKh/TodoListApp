//
//  HourlyWeather.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct Sys: Decodable {
    let country: String
    let id: Int
    let sunrise: UInt64
    let sunset: UInt64
    let timezone: UInt64
    let type: Int
    let name: String
    let cod: Int
}
