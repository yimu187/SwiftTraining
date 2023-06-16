//
//  DetailsViewController.swift
//  TableView
//
//  Created by Murat Yilmaz on 14.06.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    var selectedSimpson : Simpson?
    
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameSurnameLabel.text = selectedSimpson?.name
        countryLabel.text = selectedSimpson?.country
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image

        // Do any additional setup after loading the view.
    }
    

}
