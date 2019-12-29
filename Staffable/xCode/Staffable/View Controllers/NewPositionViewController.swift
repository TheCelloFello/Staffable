//
//  NewPositionViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/27/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit
import Alamofire

class NewPositionViewController: UIViewController {

    @IBOutlet weak var company: UITextField!
    
    @IBOutlet weak var positionTitle: UITextField!

    @IBOutlet weak var pay: UITextField!
    
    @IBOutlet weak var tags: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    struct SignupData: Codable {
        let company: String
        let positions: String
        let pay: String
        let keywords: String
    }
    
    @IBAction func signOut(_ sender: Any) {
        performSegue(withIdentifier: "logout2Segue", sender: self)
    }
    
    
    
    
    @IBAction func check(_ sender: Any) {
        
        let company = self.company.text
        let positions = self.positionTitle.text
        let pay = self.pay.text
        let keywords = self.tags.text
        
        let signup = SignupData(company: company!,
                               positions: positions!,
                                pay: pay!,
                                keywords: keywords!)
        
        AF.request("https://e3c1f471.ngrok.io/update_company", parameters: signup).response {response in debugPrint(response)}
        
        dismiss(animated: true, completion: nil )
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
