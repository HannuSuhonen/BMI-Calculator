//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Hannu Suhonen on 30.3.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bmiText: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var heightText: UILabel!
    var height: Float = 0
    var weight:Float = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        height = 1.5
        weight = 100
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value * 100)/100
        heightText.text = "\(String(roundedValue)) M"
        height = roundedValue
        
        let bmi = calculateBmi(height, weight)
        
        bmiText.text = String(bmi)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let roundedValue = round(sender.value)
        weightText.text = "\(String(roundedValue)) KG"
        weight = roundedValue
        
        let bmi = calculateBmi(height, weight)
        
        bmiText.text = String(bmi)
    }
    
    func calculateBmi(_: Float, _: Float) -> Float{
        return weight/(height * height)
    }
}

