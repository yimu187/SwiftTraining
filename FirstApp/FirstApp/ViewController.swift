//
//  ViewController.swift
//  FirstApp
//
//  Created by Murat Yilmaz on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
  
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumButtonClicked(_ sender: Any) {
        
        if let firstNum = Double(firstText.text!){
            if let secondNum = Double(secondText.text!){
                let result = firstNum + secondNum
                resultLabel.text = String(result)
                
            }
        }
        
    }
    
    
    @IBAction func minusButtonClicked(_ sender: Any) {
        if let firstNum = Double(firstText.text!){
            if let secondNum = Double(secondText.text!){
                let result = firstNum - secondNum
                resultLabel.text = String(result)
                
            }
        }
    }
    
    @IBAction func multiplyButtonClicked(_ sender: Any) {
        if let firstNum = Double(firstText.text!){
            if let secondNum = Double(secondText.text!){
                let result = firstNum * secondNum
                resultLabel.text = String(result)
                
            }
        }
    }
    
    @IBAction func divideButtonClicked(_ sender: Any) {
        if let firstNum = Double(firstText.text!){
            if let secondNum = Double(secondText.text!){
                let result = firstNum / secondNum
                resultLabel.text = String(result)
                
            }
        }
    }
    
}

