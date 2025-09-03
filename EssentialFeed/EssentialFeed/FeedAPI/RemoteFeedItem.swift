//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Victor Lee on 3/9/25.
//
import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
