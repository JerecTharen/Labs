//
//  Pasta.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/17/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import Foundation

struct Pasta: Decodable {

    let recipeID: String
    let title: String
    let imageURL: URL
    let ingredients: [String?]
    let sourceURL: String

    enum CodingKeys: String, CodingKey {
        case recipiID = "recipe_id"
        case title = "title"
        case imageURL = "image_url"
        case ingredients = "ingredients"
        case sourceURL = "source_url"
    }

    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy: CodingKeys.self)

        self.recipeID = try valueContainer.decode(String.self, forKey: CodingKeys.recipiID)
        self.title = try valueContainer.decode(String.self, forKey: CodingKeys.title)
        self.imageURL = try valueContainer.decode(URL.self, forKey: CodingKeys.imageURL)
        self.ingredients = try valueContainer.decode([String?].self, forKey: CodingKeys.ingredients)
        self.sourceURL = try valueContainer.decode(String.self, forKey: CodingKeys.sourceURL)

    }
}
