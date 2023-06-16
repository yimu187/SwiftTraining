//
//  ViewController.swift
//  SegueApp
//
//  Created by Murat Yilmaz on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var InfoTextField: UITextField!
    
    @IBOutlet weak var savedLabel: UILabel!
    
    @IBOutlet weak var textFieldView: UITextField!
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let usernames = UserDefaults.standard.value(forKey: "username")
        savedLabel.text = "Kayıtlı kişiler \(usernames)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFieldView.text = ""
    }

    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController"{
            let dest = segue.destination as! SecodViewController
            dest.myName = userInput
        }
    }
    
    @IBAction func nextClicked(_ sender: Any) {
        userInput = textFieldView.text!
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        savedLabel.text = "Kayıtlı Veri: \(InfoTextField.text!)"
        UserDefaults.standard.set(InfoTextField.text!, forKey: "username")
    }
}

