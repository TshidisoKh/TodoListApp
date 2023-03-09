////
////  NetworkHelper.swift
////  TodoListApp
////
////  Created by Tshidiso Khoza on 2023/03/07.
////
//
//import Foundation
//import Alamofire
//
//class NetworkHelper {
//   func fetchAPIData() {
//      let url = "";
//      AF.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil)
//        .response{ resp in
//            switch resp.result{
//              case .success(let data):
//                do{
//                  let jsonData = try JSONDecoder().decode([WeatherData].self, from: data!)
//                  print(jsonData)
//               } catch {
//                  print(error)
//               }
//             case .failure(let error):
//               print(error)
//             }
//        }
//   }
//}
