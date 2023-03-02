// MARK: - Mocks generated from file: TodoListApp/Todo List/Cache/TodoListCache.swift at 2023-03-02 12:37:11 +0000

//
//  TodoListCache.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Cuckoo
@testable import TodoListApp

import Foundation






 class MockTodoListCache: TodoListCache, Cuckoo.ProtocolMock {
    
     typealias MocksType = TodoListCache
    
     typealias Stubbing = __StubbingProxy_TodoListCache
     typealias Verification = __VerificationProxy_TodoListCache

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: TodoListCache?

     func enableDefaultImplementation(_ stub: TodoListCache) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func addTask(task: Task)  {
        
    return cuckoo_manager.call(
    """
    addTask(task: Task)
    """,
            parameters: (task),
            escapingParameters: (task),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.addTask(task: task))
        
    }
    
    
    
    
    
     func deleteTask(id: Int)  {
        
    return cuckoo_manager.call(
    """
    deleteTask(id: Int)
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.deleteTask(id: id))
        
    }
    
    
    
    
    
     func editTask(id: Int)  {
        
    return cuckoo_manager.call(
    """
    editTask(id: Int)
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.editTask(id: id))
        
    }
    
    
    
    
    
     func fetchTask(id: Int) -> Task {
        
    return cuckoo_manager.call(
    """
    fetchTask(id: Int) -> Task
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTask(id: id))
        
    }
    
    
    
    
    
     func fetchTasks() -> [Task] {
        
    return cuckoo_manager.call(
    """
    fetchTasks() -> [Task]
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTasks())
        
    }
    
    

     struct __StubbingProxy_TodoListCache: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func addTask<M1: Cuckoo.Matchable>(task: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Task)> where M1.MatchedType == Task {
            let matchers: [Cuckoo.ParameterMatcher<(Task)>] = [wrap(matchable: task) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method:
    """
    addTask(task: Task)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method:
    """
    deleteTask(id: Int)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method:
    """
    editTask(id: Int)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<(Int), Task> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method:
    """
    fetchTask(id: Int) -> Task
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func fetchTasks() -> Cuckoo.ProtocolStubFunction<(), [Task]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method:
    """
    fetchTasks() -> [Task]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_TodoListCache: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func addTask<M1: Cuckoo.Matchable>(task: M1) -> Cuckoo.__DoNotUse<(Task), Void> where M1.MatchedType == Task {
            let matchers: [Cuckoo.ParameterMatcher<(Task)>] = [wrap(matchable: task) { $0 }]
            return cuckoo_manager.verify(
    """
    addTask(task: Task)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    deleteTask(id: Int)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    editTask(id: Int)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Task> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchTask(id: Int) -> Task
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func fetchTasks() -> Cuckoo.__DoNotUse<(), [Task]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    fetchTasks() -> [Task]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class TodoListCacheStub: TodoListCache {
    

    

    
    
    
    
     func addTask(task: Task)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func deleteTask(id: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func editTask(id: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func fetchTask(id: Int) -> Task  {
        return DefaultValueRegistry.defaultValue(for: (Task).self)
    }
    
    
    
    
    
     func fetchTasks() -> [Task]  {
        return DefaultValueRegistry.defaultValue(for: ([Task]).self)
    }
    
    
}





// MARK: - Mocks generated from file: TodoListApp/Todo List/Repositories/TodoListRepository.swift at 2023-03-02 12:37:11 +0000

//
//  TodoListRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/02.
//

import Cuckoo
@testable import TodoListApp

import Foundation






 class MockTodoListRepository: TodoListRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = TodoListRepository
    
     typealias Stubbing = __StubbingProxy_TodoListRepository
     typealias Verification = __VerificationProxy_TodoListRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: TodoListRepository?

     func enableDefaultImplementation(_ stub: TodoListRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func addTask(task: Task)  {
        
    return cuckoo_manager.call(
    """
    addTask(task: Task)
    """,
            parameters: (task),
            escapingParameters: (task),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.addTask(task: task))
        
    }
    
    
    
    
    
     func deleteTask(id: Int)  {
        
    return cuckoo_manager.call(
    """
    deleteTask(id: Int)
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.deleteTask(id: id))
        
    }
    
    
    
    
    
     func editTask(id: Int)  {
        
    return cuckoo_manager.call(
    """
    editTask(id: Int)
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.editTask(id: id))
        
    }
    
    
    
    
    
     func fetchTask(id: Int) -> Task {
        
    return cuckoo_manager.call(
    """
    fetchTask(id: Int) -> Task
    """,
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTask(id: id))
        
    }
    
    
    
    
    
     func fetchTasks() -> [Task] {
        
    return cuckoo_manager.call(
    """
    fetchTasks() -> [Task]
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTasks())
        
    }
    
    

     struct __StubbingProxy_TodoListRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func addTask<M1: Cuckoo.Matchable>(task: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Task)> where M1.MatchedType == Task {
            let matchers: [Cuckoo.ParameterMatcher<(Task)>] = [wrap(matchable: task) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method:
    """
    addTask(task: Task)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method:
    """
    deleteTask(id: Int)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method:
    """
    editTask(id: Int)
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<(Int), Task> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method:
    """
    fetchTask(id: Int) -> Task
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func fetchTasks() -> Cuckoo.ProtocolStubFunction<(), [Task]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method:
    """
    fetchTasks() -> [Task]
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_TodoListRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func addTask<M1: Cuckoo.Matchable>(task: M1) -> Cuckoo.__DoNotUse<(Task), Void> where M1.MatchedType == Task {
            let matchers: [Cuckoo.ParameterMatcher<(Task)>] = [wrap(matchable: task) { $0 }]
            return cuckoo_manager.verify(
    """
    addTask(task: Task)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    deleteTask(id: Int)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    editTask(id: Int)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Task> where M1.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
            return cuckoo_manager.verify(
    """
    fetchTask(id: Int) -> Task
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func fetchTasks() -> Cuckoo.__DoNotUse<(), [Task]> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    fetchTasks() -> [Task]
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class TodoListRepositoryStub: TodoListRepository {
    

    

    
    
    
    
     func addTask(task: Task)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func deleteTask(id: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func editTask(id: Int)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     func fetchTask(id: Int) -> Task  {
        return DefaultValueRegistry.defaultValue(for: (Task).self)
    }
    
    
    
    
    
     func fetchTasks() -> [Task]  {
        return DefaultValueRegistry.defaultValue(for: ([Task]).self)
    }
    
    
}




