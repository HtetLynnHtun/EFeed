//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 22/11/2022.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
