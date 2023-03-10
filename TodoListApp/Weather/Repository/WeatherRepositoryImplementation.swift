//
//  WeatherRepositoryImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation

class  WeatherRepositoryImplementation: WeatherRepository {
    
     @Injected internal var weatherService: WeatherService
    var weatherData = [WeatherDataModel]()
    
    func getWeather(completion: @escaping((WeatherDataModel?, _ error: String) -> Void)){
        weatherService.getWeather { (weather, error) in
            completion(weather, error)
        }
    }
}

