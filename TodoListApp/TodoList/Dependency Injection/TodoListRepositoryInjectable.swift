//
//  TodoListRepositoryInjectable.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//
import Foundation

import Foundation
import Swinject

protocol TodoListRepositoryInjectable {

    var todoListRepository: TodoListRepository { get }

}

extension TodoListRepositoryInjectable {

    var todoListRepository: TodoListRepository {
        get {
            return Container().resolve(TodoListRepository.self)!
        }
    }
}
