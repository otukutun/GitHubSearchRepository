//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/7/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        
        var parameters: Any? {
            return ["q" : keyword]
        }
    }
    
    struct SearchUsers : GitHubRequest {
        let keyword: String
        
        typealias Response = SearchResponse<User>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/users"
        }
        
        var parameters: Any? {
            return ["" : keyword]
        }
    }
}
