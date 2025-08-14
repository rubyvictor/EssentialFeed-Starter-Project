//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Victor Lee on 14/8/25.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.get(from: URL(string: "https://a-url.com")!) // Move test logic from RemoteFeedLoader to HTTPClient
    }
}

class HTTPClient {
    static var shared = HTTPClient()  // Remove Singleton instance
    // Remove private init since it's no longer a Singleton

    func get(from url: URL) {} // Override this method in the mock / spy
}

class HTTPClientSpy: HTTPClient {
    // Move test logic to this new subclass of the HTTPClient
    var requestedURL: URL?
    override func get(from url: URL) {
        requestedURL = url
    }
    
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
