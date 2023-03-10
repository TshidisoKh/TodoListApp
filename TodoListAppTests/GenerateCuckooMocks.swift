// MARK: - Mocks generated from file: DemoRepository.swift at 2023-03-10 09:44:54 +0000

//
//  DemoRepository.swift
//  TodoListApp
//
//  Created by Shaun Churchyard on 2023/03/02.
//

import Cuckoo
@testable import TodoListApp

import Foundation


 class MockDemoRepository: DemoRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = DemoRepository
    
     typealias Stubbing = __StubbingProxy_DemoRepository
     typealias Verification = __VerificationProxy_DemoRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DemoRepository?

     func enableDefaultImplementation(_ stub: DemoRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func DoSomething()  {
        
    return cuckoo_manager.call("DoSomething()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.DoSomething())
        
    }
    

	 struct __StubbingProxy_DemoRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func DoSomething() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockDemoRepository.self, method: "DoSomething()", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_DemoRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func DoSomething() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("DoSomething()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class DemoRepositoryStub: DemoRepository {
    

    

    
    
    
     func DoSomething()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: TodoListApp/TodoList/Cache/TodoListCache.swift at 2023-03-10 09:44:54 +0000

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
        
    return cuckoo_manager.call("addTask(task: Task)",
            parameters: (task),
            escapingParameters: (task),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.addTask(task: task))
        
    }
    
    
    
     func deleteTask(id: Int)  {
        
    return cuckoo_manager.call("deleteTask(id: Int)",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.deleteTask(id: id))
        
    }
    
    
    
     func editTask(id: Int)  {
        
    return cuckoo_manager.call("editTask(id: Int)",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.editTask(id: id))
        
    }
    
    
    
     func fetchTask(id: Int) -> Task {
        
    return cuckoo_manager.call("fetchTask(id: Int) -> Task",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTask(id: id))
        
    }
    
    
    
     func fetchTasks() -> [Task] {
        
    return cuckoo_manager.call("fetchTasks() -> [Task]",
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
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method: "addTask(task: Task)", parameterMatchers: matchers))
	    }
	    
	    func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method: "deleteTask(id: Int)", parameterMatchers: matchers))
	    }
	    
	    func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method: "editTask(id: Int)", parameterMatchers: matchers))
	    }
	    
	    func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<(Int), Task> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method: "fetchTask(id: Int) -> Task", parameterMatchers: matchers))
	    }
	    
	    func fetchTasks() -> Cuckoo.ProtocolStubFunction<(), [Task]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListCache.self, method: "fetchTasks() -> [Task]", parameterMatchers: matchers))
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
	        return cuckoo_manager.verify("addTask(task: Task)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("deleteTask(id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("editTask(id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Task> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("fetchTask(id: Int) -> Task", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchTasks() -> Cuckoo.__DoNotUse<(), [Task]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchTasks() -> [Task]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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


// MARK: - Mocks generated from file: TodoListApp/TodoList/Repositories/TodoListRepository.swift at 2023-03-10 09:44:54 +0000

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
        
    return cuckoo_manager.call("addTask(task: Task)",
            parameters: (task),
            escapingParameters: (task),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.addTask(task: task))
        
    }
    
    
    
     func deleteTask(id: Int)  {
        
    return cuckoo_manager.call("deleteTask(id: Int)",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.deleteTask(id: id))
        
    }
    
    
    
     func editTask(id: Int)  {
        
    return cuckoo_manager.call("editTask(id: Int)",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.editTask(id: id))
        
    }
    
    
    
     func fetchTask(id: Int) -> Task {
        
    return cuckoo_manager.call("fetchTask(id: Int) -> Task",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.fetchTask(id: id))
        
    }
    
    
    
     func fetchTasks() -> [Task] {
        
    return cuckoo_manager.call("fetchTasks() -> [Task]",
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
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method: "addTask(task: Task)", parameterMatchers: matchers))
	    }
	    
	    func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method: "deleteTask(id: Int)", parameterMatchers: matchers))
	    }
	    
	    func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method: "editTask(id: Int)", parameterMatchers: matchers))
	    }
	    
	    func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<(Int), Task> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method: "fetchTask(id: Int) -> Task", parameterMatchers: matchers))
	    }
	    
	    func fetchTasks() -> Cuckoo.ProtocolStubFunction<(), [Task]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockTodoListRepository.self, method: "fetchTasks() -> [Task]", parameterMatchers: matchers))
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
	        return cuckoo_manager.verify("addTask(task: Task)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("deleteTask(id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func editTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("editTask(id: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchTask<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(Int), Task> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("fetchTask(id: Int) -> Task", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func fetchTasks() -> Cuckoo.__DoNotUse<(), [Task]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("fetchTasks() -> [Task]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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


// MARK: - Mocks generated from file: TodoListApp/Weather/Repository/WeatherRepository.swift at 2023-03-10 09:44:54 +0000

//
//  WeatherRepository.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Cuckoo
@testable import TodoListApp

import Foundation


 class MockWeatherRepository: WeatherRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = WeatherRepository
    
     typealias Stubbing = __StubbingProxy_WeatherRepository
     typealias Verification = __VerificationProxy_WeatherRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WeatherRepository?

     func enableDefaultImplementation(_ stub: WeatherRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getWeather(with location: String) -> [WeatherDataModel] {
        
    return cuckoo_manager.call("getWeather(with: String) -> [WeatherDataModel]",
            parameters: (location),
            escapingParameters: (location),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getWeather(with: location))
        
    }
    

	 struct __StubbingProxy_WeatherRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getWeather<M1: Cuckoo.Matchable>(with location: M1) -> Cuckoo.ProtocolStubFunction<(String), [WeatherDataModel]> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: location) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepository.self, method: "getWeather(with: String) -> [WeatherDataModel]", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getWeather<M1: Cuckoo.Matchable>(with location: M1) -> Cuckoo.__DoNotUse<(String), [WeatherDataModel]> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: location) { $0 }]
	        return cuckoo_manager.verify("getWeather(with: String) -> [WeatherDataModel]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryStub: WeatherRepository {
    

    

    
    
    
     func getWeather(with location: String) -> [WeatherDataModel]  {
        return DefaultValueRegistry.defaultValue(for: ([WeatherDataModel]).self)
    }
    
}


// MARK: - Mocks generated from file: TodoListApp/Weather/Services/WeatherService.swift at 2023-03-10 09:44:54 +0000

//
//  WeatherService.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Cuckoo
@testable import TodoListApp

import Foundation


 class MockWeatherService: WeatherService, Cuckoo.ProtocolMock {
    
     typealias MocksType = WeatherService
    
     typealias Stubbing = __StubbingProxy_WeatherService
     typealias Verification = __VerificationProxy_WeatherService

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WeatherService?

     func enableDefaultImplementation(_ stub: WeatherService) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getWeather(completion: @escaping ((WeatherDataModel) -> Void))  {
        
    return cuckoo_manager.call("getWeather(completion: @escaping ((WeatherDataModel) -> Void))",
            parameters: (completion),
            escapingParameters: (completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getWeather(completion: completion))
        
    }
    

	 struct __StubbingProxy_WeatherService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getWeather<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(((WeatherDataModel) -> Void))> where M1.MatchedType == ((WeatherDataModel) -> Void) {
	        let matchers: [Cuckoo.ParameterMatcher<(((WeatherDataModel) -> Void))>] = [wrap(matchable: completion) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherService.self, method: "getWeather(completion: @escaping ((WeatherDataModel) -> Void))", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getWeather<M1: Cuckoo.Matchable>(completion: M1) -> Cuckoo.__DoNotUse<(((WeatherDataModel) -> Void)), Void> where M1.MatchedType == ((WeatherDataModel) -> Void) {
	        let matchers: [Cuckoo.ParameterMatcher<(((WeatherDataModel) -> Void))>] = [wrap(matchable: completion) { $0 }]
	        return cuckoo_manager.verify("getWeather(completion: @escaping ((WeatherDataModel) -> Void))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherServiceStub: WeatherService {
    

    

    
    
    
     func getWeather(completion: @escaping ((WeatherDataModel) -> Void))   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

