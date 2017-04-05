//
//  GitHubClientError.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/5/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    case connectionError(Error)
    
    case responseParseError(Error)
    
    case apiError(GitHubAPIError)
}
