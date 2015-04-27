//
//  ViewController.swift
//  COD
//
//  Created by Raghavendra Chithirala on 4/1/15.
//  Copyright (c) 2015 Raghavendra Chithirala. All rights reserved.
//

import UIKit

class signUpController: UIViewController,UITextFieldDelegate {
    
    let validator = Validator();
    
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Firstname: UITextField!
    @IBOutlet weak var Lastname: UITextField!
    @IBOutlet weak var Mailid: UITextField!
    @IBOutlet weak var Pwd: UITextField!
    @IBOutlet weak var Cpwd: UITextField!
    
    // for validating fields
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Username.delegate = self
        Username.placeholder = "e.g. michsalee"
        Firstname.delegate = self
        Firstname.placeholder = "Micheal"
        Lastname.delegate = self
        Lastname.placeholder = "Salee"
        Mailid.delegate = self
        Mailid.placeholder = "mich.salee@iit.edu"
        Pwd.delegate = self
        Pwd.placeholder = "********"
        Cpwd.delegate = self
        Cpwd.placeholder = "********"
        // Do any additional setup after loading the view, typically from a nib
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String!, sender: AnyObject!) -> Bool {
        if identifier == "segueSignup" {
            
            if (Username.text.isEmpty) {
                
                let alert = UIAlertView()
                alert.title = "No Text"
                alert.message = "User name is mandatory"
                alert.addButtonWithTitle("Ok")
                alert.show()
                Username.backgroundColor = UIColor .redColor()
                return true
                
            }
                
            else if (Firstname.text.isEmpty) {
                
                let alert = UIAlertView()
                alert.title = "No Text"
                alert.message = "First name is mandatory"
                alert.addButtonWithTitle("Ok")
                alert.show()
                Firstname.backgroundColor = UIColor .redColor()
                return true
                
            }
                
            else if (Mailid.text.isEmpty) {
                Mailid.backgroundColor = UIColor .greenColor()
                
                let alert = UIAlertView()
                alert.title = "No Text"
                alert.message = "Mail id is mandatory"
                alert.addButtonWithTitle("Ok")
                alert.show()
                Mailid.backgroundColor = UIColor .redColor()
                
                return true
                }
            
            
        }
        else if identifier == "backFromSignup"
        {
            println("Go back!")
        }
        else if identifier == "to_reveal"
        {
            println("Go reveal!")
        }
        // by default, transition
        return true
    }
    
    func validationFieldFailed(key:String, error:ValidationError)
    {
        error.textField.backgroundColor = UIColor.redColor()
    }
    
    func validationFieldSuccess(key:String, validField:UITextField)
    {
        validField.backgroundColor = UIColor.greenColor()
    }
    
    
    
}
