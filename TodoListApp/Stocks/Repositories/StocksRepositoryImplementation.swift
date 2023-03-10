//
//  StocksRepositoryImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation

class StocksRepositoryImplementation: StocksRepository {
    
    @Injected internal var stocksService: StocksService
    func getStocks(completion: @escaping ((DataRes) -> Void)) {
        stocksService.getStocks { stock in
            completion(stock)
        }
    }
}

