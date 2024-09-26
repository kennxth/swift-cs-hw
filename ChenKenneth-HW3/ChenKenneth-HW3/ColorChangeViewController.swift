//
//  ColorChangeViewController.swift
//  ChenKenneth-HW3
//
//  Created by Kenneth Chen on 9/24/24.
//

import UIKit

protocol ColorUpdateDelegate {
    func updateBackgroundColor(with color: UIColor)
}

class ColorChangeViewController: UIViewController {

    var delegate: ColorUpdateDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    @IBAction func colorChangeBlueButton(_ sender: Any) {
        delegate?.updateBackgroundColor(with: .red)
        self.dismiss(animated: true)
    }
    @IBAction func colorChangeRedButton(_ sender: Any) {
        delegate?.updateBackgroundColor(with: .blue)
        self.dismiss(animated: true)
    }
    
}
