//
//  TMAddTaskViewController.swift
//  TaskManager
//
//  Created by Shrijit Singh on 21/12/17.
//  Copyright © 2017 Shrijit Singh. All rights reserved.
//

import UIKit

protocol TMAddTaskViewControllerDelegate {
    func taskAdded(task: TMTask)
}

class TMAddTaskViewController: UIViewController {
    
    var delegate: TMAddTaskViewControllerDelegate?
    
    @IBOutlet weak var taskNameTextBox: UITextField!
    
    @IBAction func addTaskButtonClicked(_ sender: UIBarButtonItem) {
        if let taskName = taskNameTextBox.text{
            if taskName != ""{
                let task = TMTask(name: taskName)
                delegate?.taskAdded(task: task)
            }
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelAddTaskButtonClicked(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
