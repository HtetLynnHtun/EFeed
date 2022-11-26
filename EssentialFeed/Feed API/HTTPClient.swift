//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Htet LynnHtun on 26/11/2022.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
