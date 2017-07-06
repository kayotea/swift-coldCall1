//
//  ViewController.swift
//  coldcall
//
//  Created by Placoderm on 7/5/17.
//  Copyright © 2017 Placoderm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let names = [
        "Bryant",
        "Courtney",
        "Jay",
        "Ryota",
        "Uyanga"
    ]
    var name_idx = 0
    
    @IBOutlet weak var contactName: UILabel!
    @IBAction func callButton(_ sender: UIButton) {
        name_idx = Int(arc4random_uniform(5))
        updateUI()
    }
    
    func updateUI() {
        contactName.text = self.names[name_idx]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

