//
//  FeedCachePolicy.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 20/12/2022.
//

import Foundation

internal final class FeedCachePolicy {
    private static let calendar = Calendar(identifier: .gregorian)
    
    private init() { }
    
    private static var maxCachAgeInDays: Int {
        return 7
    }
    
    internal static func validate(_ timestamp: Date, against date: Date) -> Bool {
        guard let maxCachedAge = calendar.date(byAdding: .day, value: maxCachAgeInDays, to: timestamp) else {
            return false
        }
        
        return date < maxCachedAge
    }
}
