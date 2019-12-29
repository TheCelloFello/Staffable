//
//  TypeSelectionViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit

class TypeSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func employeeButton(_ sender: Any) {
        performSegue(withIdentifier: "employeeSegue", sender: self)
    }
    
    
    @IBAction func employerButton(_ sender: Any) {
        performSegue(withIdentifier: "employerSegue", sender: self)
    }

    @IBAction func jobSearch(_ sender: Any) {
        performSegue(withIdentifier: "jobSearchSegue", sender: self)
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
