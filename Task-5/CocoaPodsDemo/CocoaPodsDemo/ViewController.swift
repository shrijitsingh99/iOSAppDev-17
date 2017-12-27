//
//  ViewController.swift
//  CocoaPodsDemo
//
//  Created by Shrijit Singh on 26/12/17.
//  Copyright © 2017 Shrijit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextBox: UITextField!
    @IBOutlet weak var passwordTextBox: UITextField!
    
    let userDetails: [String: String] = ["shrijit":"22/07/1999"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showInfoTableViewController" {
            if userDetails[(userNameTextBox?.text)!] == passwordTextBox?.text {
                return true
            }
            else {
                return false
            }
        }
        return true
    }

}

