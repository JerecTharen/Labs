//
//  Helpers.swift
//  SlapJack
//
//  Created by Tyler Donohue on 1/27/19.
//  Copyright © 2019 Tyler Donohue. All rights reserved.
//

import Foundation

import Foundation
import UIKit

extension UIImageView {
    func imageFromURL(urlString: String?) {
        guard let urlString = urlString, let url = URL(string: urlString) else {
            return
        }
        DispatchQueue.global().async {
            guard let data = try? Data(contentsOf: url) else { return }
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }
    }
}
