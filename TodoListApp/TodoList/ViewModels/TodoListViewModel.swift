//
//  TodoListViewModel.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

class TodoListViewModel{
    @Injected internal var todoListRepository: TodoListRepository
    func addTask(task: Task) {
        todoListRepository.addTask(task: task)
    }

    func deleteTask(id: Int) {
        todoListRepository.deleteTask(id: id)
    }

    func editTask(id: Int) {
        todoListRepository.editTask(id: id)
    }

    func fetchTask(id: Int) -> Task {
        return todoListRepository.fetchTask(id: id)
    }

    func fetchTasks() -> [Task] {
        return todoListRepository.fetchTasks()
    }
}
