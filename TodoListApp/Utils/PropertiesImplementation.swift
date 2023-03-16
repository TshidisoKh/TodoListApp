//
//  PropertiesImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/16.
//

import Foundation

class PropertiesImplementation: Properties {
    static var key: String = ""
    
    func getWeatherKey() -> String {
        return PropertiesImplementation.key
    }
    
    func setWeatherKey(key: String) {
        PropertiesImplementation.key = key
    }
    
    func getStockKey() -> String {
        return PropertiesImplementation.key
    }
    
    func setStockKey(key: String) {
        PropertiesImplementation.key = key
    }
}
