//
//  TableViewController.swift
//  Sprint1MovieList
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
         self.clearsSelectionOnViewWillAppear = false

         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return (movies.count)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return (movies.count)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            self.movies.remove(at: movies.index)
            myTableView.reloadData()
        }

}

}
