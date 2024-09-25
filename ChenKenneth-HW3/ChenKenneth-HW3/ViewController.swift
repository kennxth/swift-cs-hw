//
//  ViewController.swift
//  ChenKenneth-HW3
//
//  Created by Kenneth Chen on 9/24/24.
//

import UIKit

class ViewController: UIViewController, ColorUpdateDelegate {

    @IBOutlet weak var mainNameField: UILabel!
    
    var delegate: UIViewController!
    var vc2NewName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainNameField.text = "Text goes here"
        // Do any additional setup after loading the view.
    }
    func updateBackgroundColor(with color: UIColor) {
        mainNameField.backgroundColor = color
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let colorVC = segue.destination as? ColorChangeViewController{
            colorVC.delegate = self
        }
    }
}
  

