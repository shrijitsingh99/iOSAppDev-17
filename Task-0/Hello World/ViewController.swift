//
//  ViewController.swift
//  Hello World
//
//  Created by Shrijit Singh on 09/12/17.
//  Copyright © 2017 Shrijit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func clickMeButton(_ sender: UIButton) {
        label.text = "Hello World";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

