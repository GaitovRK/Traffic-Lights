//
//  ViewController.swift
//  Traffic Light
//
//  Created by Rashid Gaitov on 29.03.2022.
//

enum ColorChoices {
case red, orange, green
}

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var orangeLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueButton: UIButton!
    
    var currentColor = ColorChoices.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.layer.masksToBounds = true
        greenLabel.layer.masksToBounds = true
        orangeLabel.layer.masksToBounds = true

        redLabel.layer.cornerRadius = 50
        orangeLabel.layer.cornerRadius = orangeLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
        
        

        
    }
    @IBAction func blueButtonPressed() {
        switch currentColor {
        case .red: do {
            redLabel.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 0.1)
            orangeLabel.backgroundColor = UIColor(red: 50, green: 150, blue: 0, alpha: 1)
            greenLabel.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1)
            currentColor = .orange

        }
        case .orange: do {
            redLabel.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
            orangeLabel.backgroundColor = UIColor(red: 50, green: 150, blue: 0, alpha: 0.1)
            greenLabel.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1)
            currentColor = .green

        }
        case .green: do {
            redLabel.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
            orangeLabel.backgroundColor = UIColor(red: 50, green: 150, blue: 0, alpha: 1)
            greenLabel.backgroundColor = UIColor(red: 0, green: 255, blue: 0, alpha: 0.1)
            currentColor = .red
        }
        }
    }
}
