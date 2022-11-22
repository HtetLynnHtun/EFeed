//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 22/11/2022.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func loadFeed(completion: @escaping (LoadFeedResult) -> Void)
}
