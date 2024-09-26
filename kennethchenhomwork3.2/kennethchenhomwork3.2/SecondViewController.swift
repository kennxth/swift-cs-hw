//
//  SecondViewController.swift
//  kennethchenhomwork3.2
//
//  Created by Kenneth Chen on 9/25/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    var delegate: UIViewController!
    var vc2NewName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let otherVC = delegate as! TextChanger
        otherVC.changeText(newName: textField1.text!)
    }


}
