//
//  ViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "loginSegue", sender: self)
    }
    
    @IBAction func signupButton(_ sender: Any) {
    performSegue(withIdentifier: "signupSegue", sender: self)
    }

}

