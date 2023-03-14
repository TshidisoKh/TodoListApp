//
//  TodoListCacheImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

class TodoListCacheImplementation: TodoListCache {
    static var taskList: [Task] = []

    func addTask(task: Task) {
        TodoListCacheImplementation.taskList.append(task)
    }

    func deleteTask(name: String) {
        let task = TodoListCacheImplementation.taskList.first(where: {$0.name == name}) ?? Task(name: "", description: "")
        if let index = TodoListCacheImplementation.taskList.firstIndex(of: task) {
            TodoListCacheImplementation.taskList.remove(at: index)
        }
        
    }

    func fetchTask(name: String) -> Task {
        return TodoListCacheImplementation.taskList.first(where: {$0.name == name}) ?? Task(name: "", description: "")
    }

    func fetchTasks() -> [Task] {
        return TodoListCacheImplementation.taskList
    }


}
