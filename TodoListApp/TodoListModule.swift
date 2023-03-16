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
            
            container.register(WeatherRepository.self) { _ in
                return WeatherRepositoryImplementation()
            }
            
            container.register(WeatherService.self) { _ in
                return WeatherServiceImplementation()
            }
            
            container.register(StocksService.self) { _ in
                return StocksServiceImplementation()
            }
            
            container.register(StocksRepository.self) { _ in
                return StocksRepositoryImplementation()
            }
            
            container.register(Properties.self) { _ in
                return PropertiesImplementation()
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

