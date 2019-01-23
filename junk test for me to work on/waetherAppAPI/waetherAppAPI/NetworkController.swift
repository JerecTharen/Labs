//
//  NetworkController.swift
//  waetherAppAPI
//
//  Created by Tyler Donohue on 1/18/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

class NetWorkController {
    lazy var configuration: URLSessionConfiguration = URLSessionConfiguration.default
    lazy var session: URLSession = URLSession(configuration: URLSessionConfiguration)
    let url: URL
    init(url: URL) {
        self.url = url
    }
}
