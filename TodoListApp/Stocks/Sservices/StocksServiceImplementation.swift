//
//  StocksServiceImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import Alamofire

class StocksServiceImplementation: StocksService {
    
    @Injected internal var properties: Properties
    func getStocks(completion: @escaping((DataRes?, _ error: String) -> Void)) {
        let url = "https://api.stockdata.org/v1/data/quote?symbols=AAPL%2CTSLA%2CMSFT&api_token=\(properties.getStockKey())"
        
        AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil)
            .response{ resp in
                switch resp.result{
                case .success(let data):
                    do{
                        let jsonData = try JSONDecoder().decode(DataRes.self, from: data!)
                        completion(jsonData, "")
                        print(jsonData)
                    }
                    catch {
                        completion(nil , String(error.localizedDescription))
                        print(error.localizedDescription)
                    }
                case .failure(let error):
                    completion(nil , String(error.localizedDescription))

                    print(error.localizedDescription)
                }
            }
        
    }
}

