//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Daniel Reiling on 2/4/21.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
