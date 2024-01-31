//
//  Objects.swift
//  TDDFakeStubMock
//
//  Created by Ethan Archibald on 1/31/24.
//

import Foundation

protocol NetworkService {
    func fetchData(completion: (Data?) -> Void)
}

class FakeNetworkService: NetworkService {
    func fetchData(completion: (Data?) -> Void) {
        completion(nil)
    }
}

class MockNetworkService: NetworkService {
    var fetchDataCalled = false
    
    func fetchData(completion: (Data?) -> Void) {
        fetchDataCalled = true
    }
}

class StubNetworkService: NetworkService {
    var data: Data
    
    init(data: Data) {
        self.data = data
    }
    
    func fetchData(completion: (Data?) -> Void) {
        completion(data)
    }
}

//class DataFetcher {
//    private let networkService: NetworkService
//    
//    init(networkService: NetworkService) {
//        self.networkService = networkService
//    }
//    
//    func fetchData(completion: @escaping (Data?) -> Void) {
//        networkService.fetchData { data in
//            completion(data)
//        }
//    }
//}
