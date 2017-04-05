//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/3/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

struct Repository : JSONDecodable{
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    init(json: Any) throws {
        guard let dictionary = json as? [String : Any] else {
            throw JSONDecodeError.invalidFormat(json: json)
        }
        
        guard let id = dictionary["id"] as? Int else {
            throw JSONDecodeError.missingValue(key: "id", actualValue: dictionary["id"])
        }
        
        guard let name = dictionary["name"] as? String else {
            throw JSONDecodeError.missingValue(key: "name", actualValue: dictionary["name"])
        }
        
        guard let fullName = dictionary["fullName"] as? String else {
            throw JSONDecodeError.missingValue(key: "fullName", actualValue: dictionary["fullName"])
        }
        
        guard let ownerObject = dictionary["owner"] as? String else {
            throw JSONDecodeError.missingValue(key: "owner", actualValue: dictionary["owner"])
        }
        
        self.id = id
        self.name = name
        self.fullName = fullName
        self.owner = try User(json: ownerObject)
    }
}
