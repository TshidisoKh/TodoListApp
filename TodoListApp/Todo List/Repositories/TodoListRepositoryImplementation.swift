//
//  TodoListRepositoryImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Foundation

class TodoListRepositoryImplementation: TodoListRepository, TodoListCacheInjectable {
    
    func addTask(task: Task) {
        todoListCache.addTask(task: task)
    }
    
    func deleteTask(id: Int) {
        todoListCache.deleteTask(id: id)
    }
    
    func editTask(id: Int) {
        todoListCache.editTask(id: id)
    }
    
    func fetchTask(id: Int) -> Task {
        return todoListCache.fetchTask(id: id)
    }
    
    func fetchTasks() -> [Task] {
        return todoListCache.fetchTasks()
    }
    
    
}
