//
//  ViewController.swift
//  TableView
//
//  Created by Murat Yilmaz on 14.06.2023.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()


        let homer = Simpson(name: "Homer Simpson", country: "US", job: "Nuclear", image: UIImage.init(named: "HomerSimpson")!)
        
        let marge = Simpson(name: "Marge Simpson", country: "US", job: "HouseWife", image: UIImage.init(named: "MargeSimpson")!)

        let bart = Simpson(name: "Bart Simpson", country: "US", job: "Student", image: UIImage.init(named: "BartSimpson")!)

        let lisa = Simpson(name: "Lisa Simpson", country: "US", job: "Student", image: UIImage.init(named: "LisaSimpson")!)

        let maggy = Simpson(name: "Maggy Simpson", country: "US", job: "N/A", image: UIImage.init(named: "MaggySimpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggy)
        
        tableView.dataSource = self
        tableView.delegate = self


    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //cell.textLabel?.text = "test"
        var content = cell.defaultContentConfiguration()
        content.text = mySimpsons[indexPath.row].name
        content.secondaryText = mySimpsons[indexPath.row].job
        cell.contentConfiguration = content
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        performSegue(withIdentifier: "toDetailViewController", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailViewController"{
            let dest = segue.destination as! DetailsViewController
            dest.selectedSimpson = chosenSimpson
        }
    }
}

