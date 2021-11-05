//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sarosh Tahir on 05/11/2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
        bmi = BMI(value: bmiValue, advice: "Eat more!",color: .systemBlue)
        }
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are fit",color:.systemGreen)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Don't eat you fatty!",color:.systemRed)
        }

    }
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice for you"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? .systemPink
    }
}
