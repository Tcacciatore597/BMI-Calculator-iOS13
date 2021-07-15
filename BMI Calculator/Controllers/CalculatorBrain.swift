//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Thomas Cacciatore on 7/14/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        var advice = ""
        var color = UIColor.white
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            advice = "Underweight"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "Normal"
            color = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        } else {
            advice = "Overweight"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        bmi = BMI(value: bmiValue, advice: advice, color: color)
        
        
    }
    
    func getBMIValue() -> String {
        if let safeValue = bmi {
            return String(format: "%.1f", safeValue.value)
        }
        return "0.0"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice for now."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
    
}
