//
//  ViewController.swift
//  BMICalculator
//
//  Created by Abdulaziz on 11/8/15.
//  Copyright © 2015 Abdulaziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var genderControl: UISegmentedControl!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func weightChanged(sender: AnyObject) {
        weightLabel.text = String(weightSlider.value) + " lbs"
    }
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
        if motion == .MotionShake {
            performSegueWithIdentifier("showres", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genderControl.selectedSegmentIndex = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let detailController = segue.destinationViewController as! BMIResultViewController
        detailController.height = Int(heightTextField.text!)!
        detailController.weight = Int(weightSlider.value)
        detailController.gender = Int(genderControl.selectedSegmentIndex)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

}

