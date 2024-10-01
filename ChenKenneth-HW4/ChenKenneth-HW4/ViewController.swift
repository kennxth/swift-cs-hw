// Project: ChenKenneth-HW4
// EID: KC45497
// Course: CS329E

import UIKit

public let math = ["Add", "Subtract", "Multiply", "Divide"]
public let signs = ["+", "-", "*", "/"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    let mathSegueIdentifier = "mathSegueIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection seciton: Int) -> Int {
        return math.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for:
            indexPath)
        let row = indexPath.row
        cell.textLabel?.text = math[row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == mathSegueIdentifier,
           let destination = segue.destination as? SecondViewController,
           let mathIndex = tableView.indexPathForSelectedRow?.row {
            destination.signVariable = math[mathIndex]
        }
    }
}

