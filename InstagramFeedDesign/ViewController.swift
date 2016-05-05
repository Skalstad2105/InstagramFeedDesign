//
//  ViewController.swift
//  InstagramFeedDesign
//
//  Created by Marius Skalstad on 05.05.2016.
//  Copyright © 2016 Marius Skalstad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var hero = ["Captain America","Spiderman","Superman","Thor","Batman"]
    var username = ["Sigmundo","Scatman","Doodler","Wong cha","Scality"]
    var votes = ["11","54","20","5","1"]
    
    var images = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        images.append(UIImage(named: "captainA")!)
        images.append(UIImage(named: "spiderman-new")!)
        images.append(UIImage(named: "superman-cover")!)
        images.append(UIImage(named: "thor4")!)
        images.append(UIImage(named: "batman")!)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return hero.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as? FeedTableViewCell
        
        let person = hero[indexPath.row]
        cell!.titleText.text = person
        cell?.username.text = self.username[indexPath.row]
        cell?.profileImage.image = self.images[indexPath.row]
        cell?.voteLabel.text = self.votes[indexPath.row] + " votes"
        
        cell?.pictureImageView.image = self.images[indexPath.row]
        cell?.pictureImageView.clipsToBounds = true
        cell?.pictureImageView.contentMode = .ScaleAspectFill
        
        cell?.imageView?.clipsToBounds = true
        cell?.imageView?.contentMode = .ScaleAspectFill
        
        
        return cell!
    }

}

