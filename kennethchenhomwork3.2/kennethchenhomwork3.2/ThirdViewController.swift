//
//  ThirdViewController.swift
//  kennethchenhomwork3.2
//
//  Created by Kenneth Chen on 9/25/24.
//

import UIKit

class ThirdViewController: UIViewController {
    var delegate: UIViewController!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action for button to call change color function and set it to blue
    @IBAction func blue(_ sender: UIButton) {
        let othervc = delegate as! ColorChanger
        othervc.changeColor(color: UIColor.blue)
    }
    
    // Action for button to call change color function and set it to red
    @IBAction func red(_ sender: UIButton) {
        let othervc = delegate as! ColorChanger
        othervc.changeColor(color: UIColor.red)
    }
}
