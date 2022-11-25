//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 22/11/2022.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
