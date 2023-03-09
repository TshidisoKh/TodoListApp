//
//  WeatherRepositoryTests.swift
//  TodoListAppTests
//
//  Created by Tshidiso Khoza on 2023/03/09.
//

import Foundation
import Cuckoo
import XCTest
import Swinject
@testable import TodoListApp

import Foundation

class WeatherRepositoryTests: XCTestCase {
    
    var systemUnderTest: WeatherRepository!
    
    private lazy var mockWeatherService: MockWeatherService = injectedMock(for: WeatherService.self)
    
    
    override func setUp() {
        super.setUp()
        
        Injection.shared.container = buildMockContainer()
        
        systemUnderTest = WeatherRepositoryImplementation()
    }
    
    func injectedMock<Dependency, Mock>(for dependencyType: Dependency.Type) -> Mock {
        return Injection.shared.container.resolve(Dependency.self) as! Mock
    }
    
    private func buildMockContainer() -> Container {
        let container = Container()
        container
            .register(WeatherRepository.self) { _ in
                return MockWeatherRepository()
            }
            .inObjectScope(.container)
        
        container
            .register(WeatherService.self) { _ in
                return MockWeatherService()
            }
            .inObjectScope(.container)
        return container
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetWeatherSuccess() {
        stub(mockWeatherService) { mock in
            when(mock).getWeather(completion: any()).thenDoNothing()
        }
        systemUnderTest.getWeather(with: "any()")
        verify(mockWeatherService, times(1)).getWeather(completion: any())
    }
    
    }
