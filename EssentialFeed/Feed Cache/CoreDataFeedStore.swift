//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 02/01/2023.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    
    public init() { }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
}
