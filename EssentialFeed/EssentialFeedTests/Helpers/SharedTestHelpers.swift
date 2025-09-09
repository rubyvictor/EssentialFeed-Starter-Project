//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Victor Lee on 9/9/25.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}
