//
//  SecondViewController.swift
//  ChenKenneth-HW5
//
//  Created by Kenneth Chen on 10/14/24.
//

import UIKit

let crust = ["Thin Crust", "Thick Crust"]
let cheese = ["Regular Cheese", "No Cheese", "Double Cheese"]
let meat = ["Pepperoni", "Sausage", "Canadian Bacon"]
let veggie = ["Mushroom", "Onion", "Green Olive", "Black Olive", "None"]

class SecondViewController: UIViewController {

    @IBOutlet weak var SegCtrl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectVeggies(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select veggies",
            message: "Choose your veggies:",
            preferredStyle: .alert)
        
        controller.addAction(UIAlertAction(title: "Mushroom", style: .default))
        controller.addAction(UIAlertAction(title: "Onion", style: .default))
        controller.addAction(UIAlertAction(title: "Green Olive", style: .default))
        controller.addAction(UIAlertAction(title: "Black Olive", style: .default))
        controller.addAction(UIAlertAction(title: "None", style: .cancel))
                    
        present(controller, animated: true)
    }
    
    @IBAction func selectMeat(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select meat",
            message: "Choose one meat:",
            preferredStyle: .alert)
        
        controller.addAction(UIAlertAction(title: "Pepperoni", style: .default))
        controller.addAction(UIAlertAction(title: "Sausage", style: .default))
        controller.addAction(UIAlertAction(title: "Canadian Bacon", style: .default))
        
        present(controller, animated: true)
    }
    
    
    @IBAction func selectCheese(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select cheese",
            message: "Choose a cheese type:",
            preferredStyle: .alert)
        
        controller.addAction(UIAlertAction(title: "Regular cheese", style: .default))
        controller.addAction(UIAlertAction(title: "No cheese", style: .default))
        controller.addAction(UIAlertAction(title: "Double Cheese", style: .default))
        
        present(controller, animated: true)
    }
    
    @IBAction func selectCrust(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select crust",
            message: "Choose a crust type:",
            preferredStyle: .alert)
        
        controller.addAction(UIAlertAction(title: "Thin crust", style: .default))
        controller.addAction(UIAlertAction(title: "Thick crust", style: .default))
        
        present(controller, animated: true)
    }
    
    @IBAction func onSegmentChanged(_ sender: Any) {
        
    }
    
  
}


