//
//  StocksService.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import Alamofire

protocol StocksService {
        func getStocks(completion: @escaping((StocksResponse?, _ error: String) -> Void))
}


