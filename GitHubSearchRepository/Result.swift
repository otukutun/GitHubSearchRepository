//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 2017/04/14.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
