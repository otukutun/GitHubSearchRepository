//
//  HTTPMethod.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/6/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

enum HTTPMethod : String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case head = "HEAD"
    case delete = "DELETE"
    case patch = "PATCH"
    case trace = "TRACE"
    case options = "OPTIONS"
    case connect = "CONNECT"
}
