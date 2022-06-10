//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by user218617 on 6/9/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    
    var bmi: Float?
    var bmiValue: String?
    var height: Float?
    var weight: Float?
    
    init(_ h: Float?, _ w: Float?) {
        height = h
        weight = w
    }
    mutating func setBmiValue() {
        if weight != nil || height != nil {
            bmi = weight! / pow(height!, 2)
        } else {
            weight = 0
            height = 0
        }
        
    }
    
    mutating func getBmiValue() -> String{
        bmiValue = String(format: "%.2f", bmi!)
        return bmiValue ?? "0.0"
    }
}
