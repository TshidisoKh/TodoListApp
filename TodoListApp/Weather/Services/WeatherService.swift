//
//  WeatherService.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation

protocol WeatherService{
    func getWeather(completion: @escaping((WeatherDataModel?, _ error: String) -> Void))
    
}
