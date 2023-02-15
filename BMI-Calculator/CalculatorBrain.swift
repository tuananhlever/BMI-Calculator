
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
