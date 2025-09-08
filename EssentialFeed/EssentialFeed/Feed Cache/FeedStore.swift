//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Victor Lee on 2/9/25.
//

import Foundation

public protocol FeedStore {
    typealias deletionCompletion = (Error?) -> Void
    typealias insertionCompletion = (Error?) -> Void
    typealias retrievalCompletion = (Error?) -> Void
    func deleteCachedFeed(completion: @escaping deletionCompletion)
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping insertionCompletion)
    func retrieve(completion: @escaping retrievalCompletion)
}
