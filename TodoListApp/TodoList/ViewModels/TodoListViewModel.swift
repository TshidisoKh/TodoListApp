//
//  TodoListViewModel.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

class TodoListViewModel{
    @Injected internal var todoListRepository: TodoListRepository
    @Injected internal var weatherRepository: WeatherRepository
    @Injected internal var stocksRepository: StocksRepository

    
    func getStock(completion: @escaping((StocksResponse?, _ error: String) -> Void)){
        return stocksRepository.getStocks { (stock, error) in
            completion(stock, error)
        }
    }
    
    func getWeather(completion: @escaping((WeatherDataModel?, _ error: String) -> Void)){
        return weatherRepository.getWeather { (weather, error) in
            completion(weather, error)
        }
    }
    
    func addTask(task: Task) {
        todoListRepository.addTask(task: task)
    }

    func deleteTask(name: String) {
        todoListRepository.deleteTask(name: name)
    }

    func fetchTask(name: String) -> Task {
        return todoListRepository.fetchTask(name: name)
    }

    func fetchTasks() -> [Task] {
        return todoListRepository.fetchTasks()
    }
}
