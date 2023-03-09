//
//  HourlyWeatherEntry.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/07.
//

import Foundation

struct Weather: Decodable {
    let description: String
        let icon: String
        let id: Int
        let main: String
}
