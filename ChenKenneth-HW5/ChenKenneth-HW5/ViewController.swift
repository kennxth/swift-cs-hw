// Project: ChenKenneth-HW5
// EID: KC45497
// Course: CS329E

import UIKit

class Pizza {
    var pSize: String?
    var crust: String?
    var meat: String?
    var cheese: String?
    var veggies: String?
    
    init(pSize:String, crust: String, meat: String, cheese: String, veggies: String){
        self.pSize = pSize
        self.crust = crust
        self.cheese = cheese
        self.meat = meat
        self.veggies = veggies
    }
    
    
}

let choices = [
    "1",
    "2",
    "3",
    "4"

]



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PizzaCreationDelegate {
    
    
    var pizzaList: [Pizza] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Title of Navigation Controller
        self.title = "Pizza Order"
        tableView.delegate = self
        tableView.dataSource = self
        // Creating button on navigation controller
        self.navigationItem.setRightBarButton(UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(Pushto2ndVC)), animated: true)
        
        // Do any additional setup after loading the view.
    }
    
    // Objective C function I found on stackoverflow to make button work
    @objc func Pushto2ndVC() {
        let secondViewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondViewcontroller, animated: true)
    }
    
    func didCreatePizza(_ pizza: Pizza) {
        pizzaList.append(pizza)
        tableView.reloadData()
        print("Pizza added")
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pizzaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let pizza = pizzaList[indexPath.row]
        let pizzaDescription = """
test
\(String(describing: pizza.pSize))
    \(String(describing: pizza.crust))
    \(String(describing: pizza.cheese))
    \(String(describing: pizza.meat))
    \(String(describing: pizza.veggies))
"""
        cell.textLabel?.text = pizzaDescription
        return cell
        /*let row = indexPath.row
         cell.textLabel?.text = choices[row]
         return cell*/
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue" {
            if let secondVC = segue.destination as? SecondViewController{
                secondVC.delegate = self
            }
        }
    }

    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {tableView.deselectRow(at: indexPath, animated: true)
        let rowValue = choices[indexPath.row]
        
        switch indexPath.row {
        case 0: // simple
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            controller.addAction(UIAlertAction(title: "Ok", style: .default))
            
            present(controller, animated: true)
            
        case 1: // multiple buttons
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "One", style: .default))
            controller.addAction(UIAlertAction(title: "Two", style: .default))
            controller.addAction(UIAlertAction(title: "Three", style: .default))
            controller.addAction(UIAlertAction(title: "Four", style: .default))
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel))
                        
            present(controller, animated: true)
        case 2: // standard actionsheet
            break
        case 3: // textfield
            break
        default:
            break
        }*/
    
}

