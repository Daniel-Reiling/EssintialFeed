//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Daniel Reiling on 2/4/21.
//

import XCTest

class RemoteFeedLoader {
    
    init() {}
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }

}
