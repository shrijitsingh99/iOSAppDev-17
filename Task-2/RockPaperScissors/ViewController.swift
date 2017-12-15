//
//  ViewController.swift
//  Task 2
//
//  Created by Shrijit Singh on 13/12/17.
//  Copyright © 2017 Shrijit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var computerResultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var userScoreLabel: UILabel!
    @IBOutlet weak var computerScoreLabel: UILabel!
    @IBOutlet weak var rockButtonLabel: UIButton!
    @IBOutlet weak var paperButtonLabel: UIButton!
    @IBOutlet weak var scissorsButtonLabel: UIButton!
    
    @IBAction func rockButtonClicked(_ sender: UIButton) {
        displayWinner(winner: generateWinner(userOption: 0))
    }
    
    @IBAction func paperButtonClicked(_ sender: UIButton) {
        displayWinner(winner: generateWinner(userOption: 1))
    }
    
    @IBAction func scissorsButtonClicked(_ sender: UIButton) {
        displayWinner(winner: generateWinner(userOption: 2))
    }
    @IBAction func resetButtonClicked(_ sender: UIButton) {
        self.userScoreLabel.text = "0"
        self.computerScoreLabel.text = "0"
    }
    
    func displayWinner(winner: Int) {
        switch winner {
        case 0:
            self.resultLabel.text = "It's a Tie!"
            self.computerScoreLabel.text = String(Int(self.computerScoreLabel.text!)! + 1)
            self.userScoreLabel.text = String(Int(self.userScoreLabel.text!)! + 1)
        case 1:
            self.resultLabel.text = "User Wins"
            self.userScoreLabel.text = String(Int(self.userScoreLabel.text!)! + 1)
        case 2:
            self.resultLabel.text = "Computer Wins"
            self.computerScoreLabel.text = String(Int(self.computerScoreLabel.text!)! + 1)
        default:
            break
        }
    }
    
    func generateWinner(userOption: Int) -> Int {
        self.computerResultImage.stopAnimating()
        self.rockButtonLabel.isEnabled = false;
        self.paperButtonLabel.isEnabled = false;
        self.scissorsButtonLabel.isEnabled = false;
        let mainQueue = DispatchQueue.main
        let deadline = DispatchTime.now() + .seconds(2)
        mainQueue.asyncAfter(deadline: deadline) {
            self.computerResultImage.startAnimating()
            self.resultLabel.text = ""
            self.rockButtonLabel.isEnabled = true;
            self.paperButtonLabel.isEnabled = true;
            self.scissorsButtonLabel.isEnabled = true;
        }

        let computerResult = arc4random_uniform(3)
        switch computerResult {
        case 0:
            self.computerResultImage.image = UIImage(named: "rock")
            if userOption == 0{
                return 0
            }
            else if userOption == 1{
                return 1
            }
            else{
                return 2
            }
        case 1:
            self.computerResultImage.image = UIImage(named: "paper")
            if userOption == 0{
                return 2
            }
            else if userOption == 1{
                return 0
            }
            else{
                return 1
            }
        case 2:
            self.computerResultImage.image = UIImage(named: "scissors")
            if userOption == 0{
                return 1
            }
            else if userOption == 1{
                return 2
            }
            else{
                return 0
            }
        default:
            return -1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.computerScoreLabel.text = "0"
        self.userScoreLabel.text = "0"
        
        let animatingImages: [UIImage] = [UIImage(named:"rock")!, UIImage(named:"paper")!, UIImage(named:"scissors")!]
        self.computerResultImage.animationImages = animatingImages;
        self.computerResultImage.animationDuration = 1.5
        self.computerResultImage.animationRepeatCount = 0
        self.computerResultImage.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

