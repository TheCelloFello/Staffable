//
//  EmployeeViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit
import Alamofire

class EmployeeViewController: UIViewController {

    
    @IBOutlet weak var jobLabel: UITextField!
    
    var data: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOutButton(_ sender: Any) {
        performSegue(withIdentifier: "logout2Segue", sender: self)
    }
    
    struct JobSearch: Codable {
        let search: String
    }
    
    @IBAction func jobSearch(_ sender: Any) {
        
        let search = self.jobLabel.text
            
        let newSearch = JobSearch(search: search!)
        
        func seg(_ sender: Any) {
            performSegue(withIdentifier: "jobSearchSegue", sender: self)
        }
AF.request("https://e3c1f471.ngrok.io/search_employers", parameters: newSearch).responseJSON { response in
            if let JSON = response.value as? NSDictionary {
                self.data = JSON
                seg(self)
            }
        }
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: EmployeeSearchViewController = segue.destination as! EmployeeSearchViewController
        vc.data = self.data
    }

}
