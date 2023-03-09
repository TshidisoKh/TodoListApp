//
//  WeatherRepositoryImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation

class  WeatherRepositoryImplementation: WeatherRepository {
    
    @Injected internal var weatherService: WeatherService
    var apiResult = [WeatherDataModel]()
    func getWeather(with location: String) -> WeatherDataModel{
        weatherService.getWeather { api in
            self.apiResult[0] = api
        }
        return self.apiResult[0]
        
        }
    }

