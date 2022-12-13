//
//  FeedItemsMapper.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 26/11/2022.
//

import Foundation

internal class FeedItemsMapper {
    private static var OK_200: Int {
        return 200
    }
    
    internal static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [RemoteFeedItem] {
        guard response.statusCode == OK_200,
              let root = try? JSONDecoder().decode(Root.self, from: data) else {
            throw RemoteFeedLoader.Error.invalidData
        }
        
        return root.items
    }
    
    private struct Root: Decodable {
        let items: [RemoteFeedItem]
    }

    
}

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
