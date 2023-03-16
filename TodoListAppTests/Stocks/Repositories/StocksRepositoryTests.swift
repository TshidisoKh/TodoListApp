//
//  StocksRepositoryTests.swift
//  TodoListAppTests
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import Cuckoo
import XCTest
import Swinject
@testable import TodoListApp

import Foundation

class StocksRepositoryTests: XCTestCase {
    
    var systemUnderTest: StocksRepository!
    
    private lazy var mockStocksService: MockStocksService = injectedMock(for: StocksService.self)
    private lazy var mockStocksRepository: MockStocksRepository = injectedMock(for: StocksRepository.self)
    
    override func setUp() {
        super.setUp()
        
        Injection.shared.container = buildMockContainer()
        
        systemUnderTest = StocksRepositoryImplementation()
    }
    
    func injectedMock<Dependency, Mock>(for dependencyType: Dependency.Type) -> Mock {
        return Injection.shared.container.resolve(Dependency.self) as! Mock
    }
    
    private func buildMockContainer() -> Container {
        let container = Container()
        container
            .register(StocksService.self) { _ in
                return MockStocksService()
            }
            .inObjectScope(.container)
        
        container
            .register(StocksRepository.self) { _ in
                return MockStocksRepository()
            }
            .inObjectScope(.container)
        return container
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetStocksSuccess() {
        stub(mockStocksService) { mock in
            when(mock).getStocks(completion: any()).thenDoNothing()
        }
        
        stub(mockStocksRepository) { mock in
            when(mock).getStocks(completion: any()).thenDoNothing()
        }
        systemUnderTest.getStocks { stock,error  in
            XCTAssert(stock?.data.count == 0)
        }
        
        verify(mockStocksService, times(1)).getStocks(completion: any())
    }
    
    func testGetStocksFailure() {
        stub(mockStocksService) { mock in
            when(mock).getStocks(completion: any()).thenDoNothing()
        }
        
        stub(mockStocksRepository) { mock in
            when(mock).getStocks(completion: any()).thenDoNothing()
        }
        systemUnderTest.getStocks { stock,error  in
            XCTFail(error)
        }
        
        verify(mockStocksService, times(1)).getStocks(completion: any())
    }
    
    
}
