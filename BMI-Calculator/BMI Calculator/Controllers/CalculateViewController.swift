
import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    var bmiNum : Float = 0.0
    var calculatorBrain = CalculatorBrain()
    @IBOutlet weak var weightNum: UILabel!
    @IBOutlet weak var heightNum: UILabel!
    @IBOutlet weak var heightSliderOut: UISlider!
    @IBOutlet weak var weightSliderOut: UISlider!
    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightNum.text = "\(height) m"
    }
   
    @IBAction func weightSlider(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightNum.text = "\(weight) Kg"
    }
  
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSliderOut.value
        let weight =  weightSliderOut.value
        calculatorBrain.calculateBMI(h: height, w: weight)
        bmiValue = calculatorBrain.getBMI()
        bmiNum = calculatorBrain.bmi
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            destinationVC.bmiNum = bmiNum
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

