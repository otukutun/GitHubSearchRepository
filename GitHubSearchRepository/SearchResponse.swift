//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/5/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

struct SearchResponse<Item : JSONDecodable> : JSONDecodable {
    let totalCount: Int
    let items: [Item]
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let totalCount = dictionary["totalCount"] as? Int else {
            throw JSONDecodeError.missingValue(key: "total_count", actualValue: dictionary["totalCount"])
        }
        
        guard let itemObjects = dictionary["items"] as? [Any] else {
            throw JSONDecodeError.missingValue(key: "items", actualValue: dictionary["items"])
        }
        
        let items = try itemObjects.map {
            return try Item(json: $0)
        }
        
        self.totalCount = totalCount
        self.items = items
    }
}
