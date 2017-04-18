//
//  ViewController.swift
//  ArraysChallenge
//
//  Created by Julia Roberts on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    // Outlets
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var stretch2Label: UILabel!

    var myFavoriteMovies:[String] = ["The Imitation Game", "Good Will Hunting", "Indie Game", "Godfather"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfMovies = myFavoriteMovies.count

        return numberOfMovies
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentCell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let index = indexPath.row

        let currentStudent = myFavoriteMovies[index]
        
        
        currentCell.textLabel?.text = currentStudent
        return currentCell

    }

    @IBAction func onStretch1Pressed(_ sender: UIButton) {
        myFavoriteMovies[1] = "Rogue One"
        myFavoriteMovies.append("The Force Awakens")
        
        myTableView.reloadData()
    }
    @IBAction func onStretch2Pressed(_ sender: UIButton) {
        // Remove the first two movies
        myFavoriteMovies.remove(at: 0)
        myFavoriteMovies.remove(at: 1)
        // Assing a value to myAllTimeFavorite
        let myAllTimeFavorite = myFavoriteMovies[0]
        
        myTableView.reloadData()
        
        stretch2Label.text = myAllTimeFavorite
    }
}

