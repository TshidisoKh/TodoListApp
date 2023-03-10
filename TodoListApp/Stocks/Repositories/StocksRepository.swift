//
//  StocksRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation

protocol StocksRepository {
        func getStocks(completion: @escaping((DataRes) -> Void))
}
