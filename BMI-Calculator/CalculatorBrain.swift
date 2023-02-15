//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by macbook on 14/02/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
struct CalculatorBrain {
    var bmi : Float = 0.0
    mutating func calculateBMI(h : Float, w : Float){
         bmi = w / pow(h, 2)
    }
    func getBMI()-> String{
        return String(format: "%.1f", bmi)
    }
}
