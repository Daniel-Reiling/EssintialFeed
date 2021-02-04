//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Daniel Reiling on 2/4/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (Result<LoadFeedResult, Error>) -> Void)
}
