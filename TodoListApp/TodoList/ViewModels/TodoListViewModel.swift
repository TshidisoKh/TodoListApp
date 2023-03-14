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

    
    func getStock(completion: @escaping((DataRes) -> Void)){
        return stocksRepository.getStocks { stock in
            completion(stock)
        }
    }
    
    func getWeather(completion: @escaping((WeatherDataModel) -> Void)){
        return weatherRepository.getWeather { weather in
            completion(weather)
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
