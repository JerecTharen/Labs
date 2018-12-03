//
//  Registration.swift
//   jeFF
//
//  Created by Tyler Donohue on 11/8/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

struct Registration {
    var firstName: String
    var lastName: String
    var emailAdress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}
