//
//  ViewController.swift
//  lab 4.4 ScrollViews
//
//  Created by Tyler Donohue on 11/12/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var scrollViewOutlet: UIScrollView!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageViewOutlet
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageViewOutlet.bounds.width
        let heightScale = size.height / imageViewOutlet.bounds.height
        let minScale = min(widthScale, heightScale)
        
        scrollViewOutlet.minimumZoomScale = minScale
        scrollViewOutlet.zoomScale = minScale
    }


}

