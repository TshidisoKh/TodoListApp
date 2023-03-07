//
//  TodoListModule.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/01.
//
import Foundation
import Swinject
public class Injection {
    static let shared = Injection()
    
        var container: Container {
            get {
                if _container == nil {
                    _container = buildContainer()
                }
                return _container!
            }
            set {
                _container = newValue
            }
        }
        private var _container: Container?
        
        private func buildContainer() -> Container {
            let container = Container()
            container.register(TodoListRepository.self) { _ in
                return TodoListRepositoryImplementation()
            }
            container.register(TodoListCache.self) { _ in
                return TodoListCacheImplementation()
            }
            
            return container
        }
}

@propertyWrapper struct Injected<Dependency> {
  let wrappedValue: Dependency
 
  init() {
    self.wrappedValue =
            Injection.shared.container.resolve(Dependency.self)!
  }
}

