//
//  PhotoViewController.swift
//COD
//
//  Created by Karthik Narisetti on 04/16/15.
//  Copyright (c) 2015 Karthik Narisetti. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
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
    
}
