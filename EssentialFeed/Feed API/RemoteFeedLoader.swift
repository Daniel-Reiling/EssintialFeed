//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Daniel Reiling on 2/4/21.
//

import Foundation

public class RemoteFeedLoader: FeedLoader {
    
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public typealias Result = LoadFeedResult<Error>
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            switch result {
            case .success(let data, let response):
                let result = FeedItemsMappper.map(data, response)
                completion(result)
            case .failure:
                completion(.failure(Error.connectivity))
            }
        }
    }
}
