//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 22/11/2022.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
