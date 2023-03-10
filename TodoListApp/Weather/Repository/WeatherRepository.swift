//
//  WeatherRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation

protocol WeatherRepository {
    func getWeather(completion: @escaping((WeatherDataModel) -> Void))    
}
