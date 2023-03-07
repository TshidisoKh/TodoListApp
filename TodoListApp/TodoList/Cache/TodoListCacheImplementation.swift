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
        let task = taskList.first(where: {$0.id == id}) ?? Task(id: 0, name: "", date: Date())
        if let index = taskList.firstIndex(of: task) {
            taskList.remove(at: index)
        }
        
    }

    func editTask(id: Int) {
        let task = taskList.first(where: {$0.id == id}) ?? Task(id: 0, name: "", date: Date())
        if let index = taskList.firstIndex(of: task) {
            taskList.remove(at: index)
        }
    }

    func fetchTask(id: Int) -> Task {
        return taskList.first(where: {$0.id == id}) ?? Task(id: 0, name: "", date: Date())
    }

    func fetchTasks() -> [Task] {
        return self.taskList
    }


}
