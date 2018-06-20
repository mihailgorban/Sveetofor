//
//  ViewController.swift
//  Sveetofor
//
//  Created by Екатерина Горбань on 17.06.2018.
//  Copyright © 2018 MIkhail Gorban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var green: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var button: UIButton!
    var currentLight = "none"
    var lightOn: CGFloat = 1
    var lightOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.backgroundColor = UIColor.red
        red.alpha = lightOff
        yellow.backgroundColor = UIColor.yellow
        yellow.alpha = lightOff
        green.backgroundColor = UIColor.green
        green.alpha = lightOff
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTap(_ sender: Any) {
    button.setTitle("Next", for: .normal)
        switch currentLight {
        case "Green", "none":
            red.alpha = lightOn
            yellow.alpha = lightOff
            green.alpha = lightOff
            currentLight = "Red"
        case "Red":
            red.alpha = lightOff
            yellow.alpha = lightOn
            green.alpha = lightOff
            currentLight = "Yellow"
        case "Yellow":
            red.alpha = lightOff
            yellow.alpha = lightOff
            green.alpha = lightOn
            currentLight = "Green"
        default:
            currentLight = "none"
        }
    }
    
}

