//
//  TodoListModule.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/01.
//

import Foundation
import Swinject
public class TodoListModule {
    
}

extension TodoListModule {
    public func registerSwiftDependencies(in container: Container) {
        container.register(TodoListRepository.self) { _ in
            return TodoListRepositoryImplementation()
        }
        
        container.register(TodoListCache.self) { _ in
            return TodoListCacheImplementation()
        }
    }
}
