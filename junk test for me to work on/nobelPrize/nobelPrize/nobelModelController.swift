//
//  nobelModelController.swift
//  nobelPrize
//
//  Created by Tyler Donohue on 1/3/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//


import Foundation

struct NobelModelController {
    
    static var currentItems: [Any] = []
    static var currentType: modelType = .nobelWinner
    
    enum modelType {
        case nobelWinner
    }
}
