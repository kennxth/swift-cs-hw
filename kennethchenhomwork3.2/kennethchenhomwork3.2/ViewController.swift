//
//  ViewController.swift
//  kennethchenhomwork3.2
//
//  Created by Kenneth Chen on 9/25/24.
//

import UIKit

protocol TextChanger {
    func changeText(newName:String)
}

protocol ColorChanger{
    func changeColor(color:UIColor)
}

class ViewController: UIViewController, TextChanger, ColorChanger {
    func changeText(newName: String) {
        nameField1.text = newName
    }
    
    func changeColor(color:UIColor) {
        nameField1.backgroundColor = color
    }

    @IBOutlet weak var nameField1: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField1.text = "Text goes here"
        
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue1",
           let nextVC = segue.destination as? SecondViewController{
            nextVC.delegate = self
            nextVC.vc2NewName = nameField1.text!
        }
        if segue.identifier == "segue2",
            let colorVC = segue.destination as? ThirdViewController{
            colorVC.delegate = self
        }
    }
    
    
    
    @IBAction func changeTextButton(_ sender: Any) {
    }
    
    @IBAction func changeColorButton(_ sender: Any) {
    }
}

