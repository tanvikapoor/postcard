//
//  ViewController.swift
//  Postcard
//
//  Created by Tanvi Kapoor on 12/6/14.
//  Copyright (c) 2014 Tanvi Kapoor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var statuslabel: UILabel!
    @IBOutlet weak var nametextfield: UITextField!
    @IBOutlet weak var messagetextfield: UITextField!
    
    @IBOutlet weak var buttonsend: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendmailbuttonpressed(sender: UIButton) {
        statuslabel.hidden = false
        statuslabel.text = messagetextfield.text
        statuslabel.textColor = UIColor.redColor()
        
        messagetextfield.text = ""
        messagetextfield.resignFirstResponder()
        
        buttonsend.setTitle("MAIL SENT", forState: UIControlState.Normal)
    }

}

