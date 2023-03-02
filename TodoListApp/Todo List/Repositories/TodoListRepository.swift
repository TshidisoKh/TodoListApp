//
//  TodoListRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Foundation

protocol TodoListRepository {
    func addTask()
    func deleteTask()
    func editTask()
    func fetchTask() -> Task
    func fetchTasks() -> [Task]
}
