//
//  JSONDecodeError.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/3/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

enum JSONDecodeError : Error {
    case invalidFormat(json: Any)
    case missingValue(key: String, actualValue: Any?)
}
