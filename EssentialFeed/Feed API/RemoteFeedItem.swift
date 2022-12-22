//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 13/12/2022.
//

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
