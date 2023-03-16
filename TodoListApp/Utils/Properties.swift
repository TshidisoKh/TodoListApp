//
//  Properties.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/16.
//

import Foundation

protocol Properties {
    func getWeatherKey() -> String
    func setWeatherKey(key: String)
    func getStockKey() -> String
    func setStockKey(key: String)
}
