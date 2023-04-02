//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Hannu Suhonen on 30.3.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
}

