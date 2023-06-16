//
//  ViewController.swift
//  LayoutProject
//
//  Created by Murat Yilmaz on 12.06.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*
        let width = view.frame.width
        let height = view.frame.height
        
        let myLabel = UILabel()
        myLabel.text = "Ben bir label'ım"
        myLabel.textColor = UIColor.black
        myLabel.backgroundColor = .yellow
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.frame = CGRect(x: width * 0.5 - (width * 0.8 / 2), y: height * 0.5 - 25 , width: 200, height: 100)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("Benim Button", for: .normal)
        myButton.setTitleColor(.blue, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6 , width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.buttonFunc), for: .touchUpInside)
         */
        
        
    }
    
    @objc func buttonFunc() {
        print("button clicked")
    }


}

