//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Zoya Afreen on 01/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var u = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    var n = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
    var o = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    
    func getBMIvalue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    
    mutating func calculateBMI (height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: u)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: n)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: o )
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
