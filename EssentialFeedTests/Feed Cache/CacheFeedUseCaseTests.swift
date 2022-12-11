//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Htet LynnHtun on 11/12/2022.
//

import XCTest

class FeedStore {
    var deleteCacheFeedCalledCount = 0
}

class LocalFeedStore {
    init(store: FeedStore) {
        
    }
}

final class CacheFeedUseCaseTests: XCTestCase {
    func test() {
        let store = FeedStore()
        let _ = LocalFeedStore(store: store)
        
        XCTAssertEqual(store.deleteCacheFeedCalledCount, 0)
    }
}
