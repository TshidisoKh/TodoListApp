//
//  TodoListRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

protocol TodoListRepository {
    func addTask(task: Task)
    func deleteTask(id: Int)
    func editTask(id: Int)
    func fetchTask(id: Int) -> Task
    func fetchTasks() -> [Task]
}