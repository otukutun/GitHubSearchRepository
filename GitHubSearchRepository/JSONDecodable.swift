//
//  JSONDecodable.swift
//  GitHubSearchRepository
//
//  Created by otukutun on 4/5/17.
//  Copyright © 2017 otukutun. All rights reserved.
//

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}
