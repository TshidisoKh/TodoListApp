//
//  TodoListCacheInjectable.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Foundation

import Foundation
import Swinject

protocol TodoListCacheInjectable {
    
    var todoListCache: TodoListCache { get }
    
}

extension TodoListCacheInjectable {
    
    var todoListCache: TodoListCache {
        get {
            return Container().resolve(TodoListCache.self)!
        }
    }
}
