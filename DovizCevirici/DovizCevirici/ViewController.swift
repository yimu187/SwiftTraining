//
//  ViewController.swift
//  DovizCevirici
//
//  Created by Murat Yilmaz on 14.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CAD: UILabel!
    
    @IBOutlet weak var GBP: UILabel!
    
    @IBOutlet weak var USD: UILabel!
    
    
    @IBOutlet weak var TRY: UILabel!
    @IBOutlet weak var JPY: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClicked(_ sender: Any) {
        
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=4a990ae1cc0ef5a920e4c7e9eeb1123c")
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error != nil {
                
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let okButton = UIAlertAction(title: "Ok", style: .default)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            }else{
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, Any>
                        if let rates = jsonResponse["rates"] as? [String : Any]{
                            
                            
                            DispatchQueue.main.async {
                                if let cad = rates["CAD"] as? Double{
                                    print(cad)
                                    self.CAD.text = "CAD: " + String(cad)
                                }
                                
                                if let gbp = rates["GBP"] as? Double{
                                    print(gbp)
                                    self.GBP.text = "GBP: " + String(gbp)
                                }
                                
                                if let usd = rates["USD"] as? Double{
                                    print(usd)
                                    self.USD.text = "USD: " + String(usd)

                                }
                                
                                if let jpy = rates["JPY"] as? Double{
                                    print(jpy)
                                    self.JPY.text = "JPY: " + String(jpy)

                                }
                                
                                if let tryl = rates["TRY"] as? Double{
                                    print(tryl)
                                    self.TRY.text = "TRY: " + String(tryl)

                                }
                            }
                            
                            
                        }
                    } catch {
                        print("Error")
                    }
                    
                    
                }
            }
        }.resume()
        
        
    }
    
}

