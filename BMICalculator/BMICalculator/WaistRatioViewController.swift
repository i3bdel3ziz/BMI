//
//  WaistRatioViewController.swift
//  BMICalculator
//
//  Created by Abdulaziz on 11/10/15.
//  Copyright © 2015 Abdulaziz. All rights reserved.
//

import UIKit

class WaistRatioViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var waistField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var resCategory: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            
        }
    }
    @IBAction func calculateDown(sender: AnyObject) {
         let res :  Float = (Float(waistField.text!)! /  Float(heightField.text!)!)
        resultLabel.text = "Ratio is " + String(res); // result wth
        if(res < 0.34) {
            resCategory.text = "You are extremely slim." // body calculation
        }
        else if(res < 0.45) {
            resCategory.text = "You are healthy slim."
        }
        else if(res < 0.51) {
            resCategory.text = "You are healthy."
        }
        else if(res < 0.63) {
            resCategory.text = "You are over weight."
        }
        else if(res < 0.63) {
            resCategory.text = "You are very over weight."
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}
