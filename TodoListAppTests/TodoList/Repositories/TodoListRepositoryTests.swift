//
//  TodoListCacheTests.swift
//  TodoListAppTests
//
//  Created by Tshidiso Khoza on 2023/03/03.
//

import Foundation
import Cuckoo
import XCTest
import Swinject
@testable import TodoListApp

class TodoListRepositoryTests: XCTestCase {
    
    var systemUnderTest: TodoListRepository!
    
    private lazy var mockTodoListCache: MockTodoListCache = injectedMock(for: TodoListCache.self)
    
    
    override func setUp() {
        super.setUp()
        
        Injection.shared.container = buildMockContainer()
        
        systemUnderTest = TodoListRepositoryImplementation()
    }
    
    func injectedMock<Dependency, Mock>(for dependencyType: Dependency.Type) -> Mock {
        return Injection.shared.container.resolve(Dependency.self) as! Mock
    }
    
    private func buildMockContainer() -> Container {
        let container = Container()
        container
            .register(TodoListCache.self) { _ in
                return MockTodoListCache()
            }
            .inObjectScope(.container)
        
        container
            .register(TodoListRepository.self) { _ in
                return MockTodoListRepository()
            }
            .inObjectScope(.container)
        return container
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddTaskSuccess() {
        stub(mockTodoListCache) { mock in
            when(mock).addTask(task: any()).thenDoNothing()
        }
        systemUnderTest.addTask(task: Task(id: 0, name: "", description: ""))
        verify(mockTodoListCache, times(1)).addTask(task: any())
    }
    
    func testDeleteTaskSuccess() {
        stub(mockTodoListCache) { mock in
            when(mock).deleteTask(id: any()).thenDoNothing()
        }
        systemUnderTest.deleteTask(id: 0)
        verify(mockTodoListCache, times(1)).deleteTask(id: any())
    }
    
    func testFetchTaskSuccess() {
        let expected = Task(id: 0, name: "", description: "")
        stub(mockTodoListCache) { mock in
            when(mock).fetchTask(id: any()).thenReturn(expected)
        }
        let actual = systemUnderTest.fetchTask(id: 0)
        XCTAssertEqual(actual.id, expected.id)
        verify(mockTodoListCache, times(1)).fetchTask(id: any())
    }
    
    func testFetchTasksSuccess() {
        let expected  = [Task]()
        stub(mockTodoListCache) { mock in
            when(mock).fetchTasks().thenReturn(expected)
        }
        
        let actual = systemUnderTest.fetchTasks()
        XCTAssertEqual(actual, expected)
        verify(mockTodoListCache, times(1)).fetchTasks()
    }
}
