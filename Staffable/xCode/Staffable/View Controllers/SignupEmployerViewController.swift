//
//  SignupEmployerViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit
import Alamofire

class SignupEmployerViewController: UIViewController {

    @IBOutlet weak var companyField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    struct SignupData: Codable {
        let company: String
        let address: String
        let email: String
        let password: String
    }
    
    @IBAction func signupEmployerButton(_ sender: Any) {
        
        let company = self.companyField.text
        let address = self.addressField.text
        let email = self.emailField.text
        let password = self.passwordField.text
        
        let signup = SignupData(company: company!,
                                address: address!,
                                email: email!,
                                password: password!)
        
        AF.request("https://e3c1f471.ngrok.io/new_company", parameters: signup).response {response in debugPrint(response)}
        
        performSegue(withIdentifier: "afterEmployerSignupSegue", sender: self)
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
