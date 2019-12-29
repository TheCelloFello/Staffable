//
//  EmployerViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit

class EmployerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newPosition(_ sender: Any) {
        performSegue(withIdentifier: "newPositionSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
