// Project: ChenKenneth-HW4
// EID: KC45497
// Course: CS329E

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var Operand1: UITextField!
    @IBOutlet weak var Operand2: UITextField!
    var signVariable = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        operatorLabel.text = signVariable
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if signVariable == "Add" {
            operatorLabel.text = "+"
        } else if signVariable == "Subtract" {
            operatorLabel.text = "-"
        } else if signVariable == "Multiply" {
            operatorLabel.text = "*"
        } else if signVariable == "Divide" {
            operatorLabel.text = "/"

        } else {
            operatorLabel.text = "Error"
        }
    }

    @IBAction func CalculateButton(_ sender: Any) {
        let Operand1Text = Operand1.text ?? ""
        let Operand2Text = Operand2.text ?? ""
        if let Opperand1Int = Int(Operand1Text), let Opperand2Int = Int(Operand2Text){
            resultLabel.text = "Integer"
            print("integer")
            /*
            if operatorLabel.text == "+" {
               resultLabel.text = Opperand1Int + Opperand2Int
            } else if operatorLabel.text == "-" {
               resultLabel.text = Int(Opperand1Int) - Int(Opperand2Int)
            } else if operatorLabel.text == "*" {
               resultLabel.text = Int(Opperand1Int) * Int(Opperand2Int)
            } else if operatorLabel.text == "/" {
               resultLabel.text = Int(Opperand1Int) / Int(Opperand2Int)
            } else {
               resultLabel.text = "Integer Error"
            }
            */
            
        } else if let _ = Float(Operand1Text), let _ = Float(Operand2Text){
            resultLabel.text = "Float"
            print("Float")
            /*
             if operatorLabel.text == "+" {
                resultLabel.text = Float(Operand1Text) + Float(Operand2Text)
             } else if operatorLabel.text == "-" {
                resultLabel.text = Float(Operand1Text) - Float(Operand2Text)
             } else if operatorLabel.text == "*" {
                resultLabel.text = Float(Operand1Text) * Float(Operand2Text)
             } else if operatorLabel.text == "/" {
                resultLabel.text = Float(Operand1Text) / Float(Operand2Text)
             } else {
                resultLabel.text = "Float Error"
             }
             */
        } else {
            resultLabel.text = "Not Integer or Float"
        }
    }
}
