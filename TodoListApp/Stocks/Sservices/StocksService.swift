//
//  StocksService.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import Alamofire

protocol StocksService {
        func getStocks(completion: @escaping((DataRes?, _ error: String) -> Void))
}

 struct DataRes: Decodable {
    let meta: Meta
    let data: [Data]
    
}

struct Meta: Decodable {
    let requested: Int
    let returned: Int
 }

struct Data: Decodable {
        let ticker: String
        let name: String
        let exchange_short: String
        let exchange_long: String
        let mic_code: String
        let currency: String
        let price: Double
        let day_high: Double
        let  day_low: Double
        let day_open: Double
//        let 52_week_high: Double
//        let 52_week_low: Double
        let market_cap: UInt64
        let previous_close_price: Double
        let previous_close_price_time: String
        let day_change: Double
        let volume: Int64
        let is_extended_hours_price: Bool
        let last_trade_time: String
    }
