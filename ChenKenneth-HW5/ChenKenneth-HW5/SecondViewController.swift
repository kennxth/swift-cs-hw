//
//  SecondViewController.swift
//  ChenKenneth-HW5
//
//  Created by Kenneth Chen on 10/14/24.
//

import UIKit

protocol PizzaCreationDelegate: AnyObject {
    func didCreatePizza(_ pizza: Pizza)
}

class SecondViewController: UIViewController {
    
    weak var delegate: PizzaCreationDelegate?

    // Create variables to keep track of each topping and set them to be empty
    var selectedSize: String = ""
    var selectedCrust: String = ""
    var selectedCheese: String = ""
    var selectedMeat: String = ""
    var selectedVeggie: String = ""
    var missingIngredient: String = ""
    
    @IBOutlet weak var SegCtrl: UISegmentedControl!
    

    @IBOutlet weak var pizzaSummary: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectVeggies(_ sender: Any) {
        // Set title and message of alert
        let controller = UIAlertController(
            title: "Select veggies",
            message: "Choose your veggies:",
            preferredStyle: .alert)
        
        // Creates actions and after each action it sets the variables to the toppings
        controller.addAction(UIAlertAction(title: "Mushroom", style: .default) {_ in
            self.selectedVeggie = "Mushroom"
        })
        controller.addAction(UIAlertAction(title: "Onion", style: .default){_ in
            self.selectedVeggie = "Onion"
        })
        controller.addAction(UIAlertAction(title: "Green Olive", style: .default){_ in
            self.selectedVeggie = "Green Olive"
        })
        controller.addAction(UIAlertAction(title: "Black Olive", style: .default){_ in
            self.selectedVeggie = "Black Olive"
        })
        controller.addAction(UIAlertAction(title: "None", style: .cancel){_ in
            self.selectedVeggie = "None"
        })
                    
        present(controller, animated: true)
    }
    
    @IBAction func selectMeat(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select meat",
            message: "Choose one meat:",
            preferredStyle: .alert)
        // Creates actions and after each action it sets the variables to the toppings
        controller.addAction(UIAlertAction(title: "Pepperoni", style: .default){_ in
            self.selectedMeat = "Pepperoni"
        })
        controller.addAction(UIAlertAction(title: "Sausage", style: .default){_ in
            self.selectedMeat = "Sausage"
        })
        controller.addAction(UIAlertAction(title: "Canadian Bacon", style: .default){_ in
            self.selectedMeat = "Canadian Bacon"
        })
        
        present(controller, animated: true)
    }
    
    
    @IBAction func selectCheese(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select cheese",
            message: "Choose a cheese type:",
            preferredStyle: .alert)
        // Creates actions and after each action it sets the variables to the toppings
        controller.addAction(UIAlertAction(title: "Regular cheese", style: .default){_ in
            self.selectedCheese = "Regular cheese"
        })
        controller.addAction(UIAlertAction(title: "No cheese", style: .default){_ in
            self.selectedCheese = "No cheese"
        })
        controller.addAction(UIAlertAction(title: "Double Cheese", style: .default){_ in
            self.selectedCheese = "Double Cheese"
        })
        
        present(controller, animated: true)
    }
    
    @IBAction func selectCrust(_ sender: Any) {
        let controller = UIAlertController(
            title: "Select crust",
            message: "Choose a crust type:",
            preferredStyle: .alert)
        // Creates actions and after each action it sets the variables to the toppings
        controller.addAction(UIAlertAction(title: "Thin crust", style: .default){_ in
            self.selectedCrust = "Thin crust"
        })
        controller.addAction(UIAlertAction(title: "Thick crust", style: .default){_ in
            self.selectedCrust = "Thick crust"
        })
        
        present(controller, animated: true)
    }
    
    // Set's default as small for pizzas and connects
    @IBAction func onSegmentChanged(_ sender: Any) {
        selectedSize = SegCtrl.titleForSegment(at: SegCtrl.selectedSegmentIndex) ?? "Small"
    }
    
    @IBAction func pizzaDone(_ sender: UIBarButtonItem) {
        // Check for missing ingredients and sends alert
        if selectedMeat.isEmpty {
            let controller = UIAlertController(
                title: "Missing ingredient",
                message: "Please select a meat.",
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(controller, animated: true)
            
        } else if selectedCrust.isEmpty {
            let controller = UIAlertController(
                title: "Missing ingredient",
                message: "Please select a crust.",
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(controller, animated: true)
            
            // If size is not selected automatically sets it to small as default
        } else if selectedSize.isEmpty {
            selectedSize = "Small"
            
        } else if selectedCheese.isEmpty {
            let controller = UIAlertController(
                title: "Missing ingredient",
                message: "Please select a cheese.",
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(controller, animated: true)
            
        } else if selectedVeggie.isEmpty {
            let controller = UIAlertController(
                title: "Missing ingredient",
                message: "Please select a veggie.",
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Ok", style: .default))
            present(controller, animated: true)
            
        } else {
            // Prints statement out with pizza and toppings
            pizzaSummary.numberOfLines = 0
            pizzaSummary.text = """
One \(selectedSize) pizza with:
\(selectedCrust) 
\(selectedCheese) 
\(selectedMeat)
\(selectedVeggie)
"""
            // sends pizza back to the table view
            let newPizza = Pizza(pSize: selectedSize, crust: selectedCrust, meat: selectedMeat, cheese: selectedCheese, veggies: selectedVeggie)
            
            delegate?.didCreatePizza(newPizza)
                        
        }
    }

    
}



