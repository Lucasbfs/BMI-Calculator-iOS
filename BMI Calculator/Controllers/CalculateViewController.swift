//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    @IBAction func sliderChange(_ sender: UISlider) {
//        print(heightSlider.value)
//        print(weightSlider.value)
//    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
//        print(round(sender.value * 100) / 100) //another way
        let heightVal = String(format: "%.2f", sender.value)
        heightLabel.text = heightVal + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
//        print(String(format: "%.0f", sender.value)) //another way
        let weightVal = Int(sender.value)
        weightLabel.text = String(weightVal) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmiVal = weight / pow(height, 2)
        
        print("Your BMI is: \(bmiVal)")
        
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = String(format: "%.1f", bmiVal)
        
        self.present(secondVC, animated: true)
        
    }
    
    
    

}

