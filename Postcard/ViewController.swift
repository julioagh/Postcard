//
//  ViewController.swift
//  Postcard
//
//  Created by Julio Gonzales on 10/2/14.
//  Copyright (c) 2014 Julio Gonzales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
        //Adding a comment here to test commits
        messageLabel.hidden=false
        messageLabel.text=enterMessage.text
        messageLabel.textColor=UIColor.redColor()
        
        enterMessage.text=""
        enterMessage.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden=false
        
        nameLabel.text=enterName.text
        
        nameLabel.textColor=UIColor.blueColor()
        
        enterName.text=""
        enterName.resignFirstResponder()
    }

}

