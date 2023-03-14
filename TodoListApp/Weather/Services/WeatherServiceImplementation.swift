//
//  WeatherServiceImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation
import Alamofire

class WeatherServiceImplementation: WeatherService {
    var apiResult = [WeatherDataModel]()
    func getWeather(completion: @escaping((WeatherDataModel?, _ error: String) -> Void)) {
        let url = "http://api.openweathermap.org/data/2.5/weather?q=Mumbai&units=metric&appid="

        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil)
            .response{ resp in
                switch resp.result{
                case .success(let data):
                    do{
                      let jsonData = try JSONDecoder().decode(WeatherDataModel.self, from: data!)
                        completion(jsonData, "")
                        print(jsonData)
                    }
                    catch {
                        completion(nil, error.localizedDescription)

                        print(error.localizedDescription)
                    }
                case .failure(let error):
                    completion(nil, error.localizedDescription)

                    print(error.localizedDescription)
                }
            }
        
    }
}




