//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Htet LynnHtun on 20/12/2022.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 1)
}
