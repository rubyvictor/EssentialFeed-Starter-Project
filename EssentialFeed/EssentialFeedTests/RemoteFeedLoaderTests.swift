//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Victor Lee on 14/8/25.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "https://a-url.com")
    }
}

class HTTPClient {
    static let shared = HTTPClient()  // Singleton single point of access instead of dependency injection via constructor, property or method
    private init() {} // No one can create this type

    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClient.shared
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
