//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 22/11/2022.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
