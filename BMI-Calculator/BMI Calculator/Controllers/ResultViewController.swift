

import UIKit

class ResultViewController: UIViewController {
    var bmiValue : String?
    var bmiNum : Float = 0.0
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        if bmiNum > 30.0 {
            adviceLabel.text = "Obese. Béo quá giảm cân đi "
            imageView.backgroundColor = UIColor.red
            
        }else if bmiNum <= 29.9 && bmiNum >= 25.0{
            adviceLabel.text = "Overweight. Hơi béo ấy nhé. Ăn ít hoy"
            imageView.backgroundColor = UIColor.orange
        } else if bmiNum <= 24.9 && bmiNum >= 18.5{
            adviceLabel.text = "Normal. Rất là oke "
            imageView.backgroundColor = UIColor.green
        }else {
            adviceLabel.text = "Underweight. Nghiện rồi, ăn nhiều vào"
            imageView.backgroundColor = UIColor.darkGray
        }
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
   

}
