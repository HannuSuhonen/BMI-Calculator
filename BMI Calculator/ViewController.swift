//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Hannu Suhonen on 30.3.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value * 100)/100
        heightText.text = "\(String(roundedValue)) M"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value)
        weightText.text = "\(String(roundedValue)) KG"
    }
}

