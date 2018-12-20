//
//  Helpers.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/20/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.compactMap
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}
