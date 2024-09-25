//
//  TextChangeViewController.swift
//  ChenKenneth-HW3
//
//  Created by Kenneth Chen on 9/24/24.
//

import UIKit

class TextChangeViewController: UIViewController {
    
    
    
    @IBOutlet weak var textChangetextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func textChangeButton(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mainSegueText",
           let nextVC = segue.destination as? ViewController{
            nextVC.delegate = self
            nextVC.vc2NewName = textChangetextField.text!
        }
        
    }
}
