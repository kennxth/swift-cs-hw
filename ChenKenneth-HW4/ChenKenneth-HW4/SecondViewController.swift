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

    // Check's what calculation you selected and displays it
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
// Shouldn't be possible to access but if you somehow don't select one of the four it displays a error message
        } else {
            operatorLabel.text = "Error"
        }
    }

    @IBAction func CalculateButton(_ sender: Any) {
        
        // Checks if it can cast Operand1/2 as a Integer and it's not nil/empty
        if Int(Operand1.text!) != nil && Int(Operand2.text!) != nil{
        // Converts them to a integer
            let Operand1Int = Int(Operand1.text!)!
            let Operand2Int = Int(Operand2.text!)!
            // Checks what calculation to do and converts it to a string so it can be displayed
            if operatorLabel.text == "+" {
               resultLabel.text = String(Operand1Int + Operand2Int)
            } else if operatorLabel.text == "-" {
               resultLabel.text = String(Operand1Int - Operand2Int)
            } else if operatorLabel.text == "*" {
               resultLabel.text = String(Operand1Int * Operand2Int)
            } else if operatorLabel.text == "/" {
               resultLabel.text = String(Operand1Int / Operand2Int)
            } else {
               resultLabel.text = "Float Error"
            }
            
        // Checks if it can cast Operand1/2 as a Float and it's not nil/empty
        } else if Float(Operand1.text!) != nil && Float(Operand2.text!) != nil{
            let Operand1Float = Float(Operand1.text!)!
            let Operand2Float = Float(Operand2.text!)!
            // Checks what calculation to do and converts it to a string so it can be displayed
            if operatorLabel.text == "+" {
               resultLabel.text = String(Operand1Float + Operand2Float)
            } else if operatorLabel.text == "-" {
               resultLabel.text = String(Operand1Float - Operand2Float)
            } else if operatorLabel.text == "*" {
               resultLabel.text = String(Operand1Float * Operand2Float)
            } else if operatorLabel.text == "/" {
               resultLabel.text = String(Operand1Float / Operand2Float)
            } else {
               resultLabel.text = "Float Error"
            }
        // Error message if it isn't a float or integer
        } else {
            resultLabel.text = "Not Integer or Float"
        }
    }
}
