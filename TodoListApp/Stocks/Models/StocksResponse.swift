//
//  StocksResponse.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/16.
//

import Foundation

struct StocksResponse: Decodable {
   let meta: Meta
   let data: [Data]
   
}
