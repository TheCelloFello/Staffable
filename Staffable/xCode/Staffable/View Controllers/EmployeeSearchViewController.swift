//
//  EmployeeSearchViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/27/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit

class EmployeeSearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var data: NSDictionary?
    
    /*
    var data:NSDictionary? = [ "top_companies": [
    [
    "email": "ugh",
    "keywords": "food cafe",
    "name" : "Cafe3",
    "password": "123",
    "pay": "1",
    "positions": "slave",
    "rating": 1,
    "reviews":[]
            ]
        ]
    ]
 */
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
        
//        self.tableView.register(UINib(nibName: "ItemTableViewCell", bundle: nil), forCellReuseIdentifier: "item")

    }
    @IBAction func signOutButton(_ sender: Any) {
        performSegue(withIdentifier: "logoutSegue", sender: self)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let companys = data!["top_companies"] as! Array<NSDictionary>
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 140.0
       }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item") as! ItemTableViewCell
        let companys = data!["top_companies"] as! Array<NSDictionary>
        print(companys)
        print(companys[0])
        let name = companys[indexPath.row]["name"] as! String
        cell.nameLabel.text = name
        let pos = companys[indexPath.row]["positions"] as! String
        cell.positionsLabel.text = pos
        let pays = companys[indexPath.row]["pay"] as! String
        cell.payLabel.text = pays
        return cell
    }
    
}

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var positionsLabel: UILabel!
    
    @IBOutlet weak var payLabel: UILabel!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
