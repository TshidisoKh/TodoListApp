// MARK: - Mocks generated from file: TodoListApp/DemoRepository.swift at 2023-03-02 11:45:44 +0000

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

