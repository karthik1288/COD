//
//  NewsTableViewController.swift
//COD
//
//  Created by Karthik Narisetti on 04/16/15.
//  Copyright (c) 2015 Karthik Narisetti. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }



    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 3
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as NewsTableViewCell

        // Configure the cell...
        if indexPath.row == 0 {
            cell.postImageView.image = UIImage(named: "Security-intro")
            cell.postTitleLabel.text = "Why this kolaveri di?"
            cell.authorLabel.text = "Karthik Narisetti"
            cell.authorImageView.image = UIImage(named: "KN")

        } else if indexPath.row == 1 {
            cell.postImageView.image = UIImage(named: "iOS Intro")
            cell.postTitleLabel.text = "Why this kolaveri di?"
            cell.authorLabel.text = "Anushka Dhar"
            cell.authorImageView.image = UIImage(named: "AD")
            
        } else {
            cell.postImageView.image = UIImage(named: "webkit-featured")
            cell.postTitleLabel.text = "A Beginner’s Guide to Animated Custom Segues in iOS 8"
            cell.authorLabel.text = "Gabriel Theodoropoulos"
            cell.authorImageView.image = UIImage(named: "Karthik Narisetti-300")
            
        }

        return cell
    }

}
