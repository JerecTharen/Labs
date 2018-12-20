//
//  MoreInfoViewController.swift
//  nobel pasta
//
//  Created by Tyler Donohue on 12/19/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class MoreInfoViewController: UIViewController {
    @IBOutlet weak var moreInfoImage: UIImageView!
    @IBOutlet weak var moreInfoTitleLabel: UILabel!
    @IBOutlet weak var moreInfoIngrediantsLabel: UILabel!
    @IBOutlet weak var moreInfoURL: UILabel!
    
    var pasta: Pasta? {
        didSet {
            DispatchQueue.main.sync {
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.sync {
            moreInfoImage.image = nil
            moreInfoTitleLabel.text = ""
            moreInfoIngrediantsLabel.text = ""
            moreInfoURL.text = ""
        }
    }
    
    private func update(_ pasta: Pasta?) {
        if let pasta = pasta {
            moreInfoTitleLabel.text = pasta.title
            moreInfoURL.text = pasta.sourceURL
            moreInfoIngrediantsLabel.text = pasta.ingredients.compactMap { $0 }.joined(separator: ", ")
            
        }
    }
    
}
