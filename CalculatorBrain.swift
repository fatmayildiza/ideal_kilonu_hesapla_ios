//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by fyildiza on 24.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi :BMI?
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%1.f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "tavsiye yok"
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
        
    }
    
   

    
    mutating func calculateBMI (height: Float , weight: Float ) {
        let bmiValue = weight / (height * height)
    
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Bir deri bir kemik kalmışsın", color: UIColor.blue)
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue ,advice: "zıpkın gibisin devaaam", color: UIColor.yellow)
        }else {
            bmi = BMI(value: bmiValue, advice: "ekmeği azalt kardeşim", color: UIColor.red)
        }

    }
    
    
   
    
}
