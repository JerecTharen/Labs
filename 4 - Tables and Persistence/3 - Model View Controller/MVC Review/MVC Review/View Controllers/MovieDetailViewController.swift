//
//  MovieDetailViewController.swift
//  MVC Review
//
//  Created by Tyler Donohue on 10/25/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit


// mark properties

var movie: Movie?

// view life cycle




class MovieDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let movie = movie {
            update(movie)
        }

        // Do any additional setup after loading the view.
    }
    
//mark actions
    
    // methods
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movie = tableView.indesPathForSelectedRow {
            let movie = movies[selectedIndexPath.row]
            MovieDetailViewController.movie = movie
        }
    }
    
    @IBAction func cprepareForUnwind(segue: UIStoryboardSegue) {
    
    }
}
