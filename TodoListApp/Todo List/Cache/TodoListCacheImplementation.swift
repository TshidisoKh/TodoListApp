//
//  TodoListCacheImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Foundation

class TodoListCacheImplementation: TodoListCache {
    var taskList: [Task] = []
    
    func addTask(task: Task) {
        taskList.append(task)
    }
    
    func deleteTask(id: Int) {
        taskList.remove(at: id)
    }
    
    func editTask(id: Int) {
    }
    
    func fetchTask(id: Int) -> Task {
        return Task(id: 1, name: "String", date: Date())
    }
    
    func fetchTasks() -> [Task] {
        return self.taskList
    }
    
    
}
