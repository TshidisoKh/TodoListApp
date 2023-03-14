//
//  TodoListCache.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

protocol TodoListCache {
    func addTask(task: Task)
    func deleteTask(name: String)
    func fetchTask(name: String) -> Task
    func fetchTasks() -> [Task]
}
