//
//  AddMoviesViewController.swift
//  Sprint1MovieList
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class AddMoviesViewController: UIViewController {
    
    var movies: [Movie] = []
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addMovie(_ sender: Any) {
        
        movies.append(input)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
}
