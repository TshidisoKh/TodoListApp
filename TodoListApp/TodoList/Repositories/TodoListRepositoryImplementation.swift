//
//  TodoListRepositoryImplementation.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

class TodoListRepositoryImplementation: TodoListRepository {
    
    @Injected internal var todoListCache: TodoListCache
    func addTask(task: Task) {
        todoListCache.addTask(task: task)
    }

    func deleteTask(name: String) {
        todoListCache.deleteTask(name: name)
    }

    func fetchTask(name: String) -> Task {
        return todoListCache.fetchTask(name: name)
    }

    func fetchTasks() -> [Task] {
        return todoListCache.fetchTasks()
    }


}
