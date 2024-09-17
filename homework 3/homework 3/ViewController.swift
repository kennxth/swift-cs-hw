// Project: ChenKenneth-HW2
// EID: KC45497
// Course: CS329E
import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    // Linking storyboard to code
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // Adding textfields to allow keyboard to be removed
    override func viewDidLoad() {
        textField.delegate = self
        passwordTextField.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        // Checks if the textfield is empty. If it is returns invalid login
        if textField.text == "" || passwordTextField.text == ""{
            statusLabel.text = "Invalid Login"
        } else {
        // else appends the info into textfield
        let name = textField.text!
        // append "pressed the button" to the string
        let message = name + " pressed the button"
        // put the result into the status label
        statusLabel.text = message
        }
    }
    // Called when 'return' key pressed

    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when the user clicks on the view outside of the UITextField

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }



}

