//
//  TodoListViewModel.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Foundation

class TodoListViewModel {
    
    let todoListRepository: TodoListRepository
    
    init(todoListRepository: TodoListRepository) {
        self.todoListRepository = todoListRepository
    }
    
    func addTask() {
        todoListRepository.addTask()
    }
    
    func deleteTask() {
        todoListRepository.deleteTask()
    }
    
    func editTask() {
        todoListRepository.editTask()
    }
    
    func fetchTask() -> Task {
        return todoListRepository.fetchTask()
    }
    
    func fetchTasks() -> [Task] {
        return todoListRepository.fetchTasks()
    }
}

