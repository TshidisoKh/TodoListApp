//
//  HourlyWeather.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct Sys: Decodable {
    let type: Int
    let   id: Int
    let   country: String
    let   sunrise: Int64
    let   sunset: Int64
}
