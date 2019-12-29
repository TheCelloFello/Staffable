//
//  LoginViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit
import Alamofire

class LoginViewController: UIViewController {
    
    var final_value = "_"
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    struct LoginData: Codable {
        let email: String
        let password: String
    }
        
    @IBAction func loginButton(_ sender: Any) {
        let etext = self.emailField.text
        let ptext = self.passwordField.text
        
        let login = LoginData(email: etext!,
                              password: ptext!)
        
    func endgame (_ sender: Any) {
        if self.final_value == "user" {
            performSegue(withIdentifier: "employeeLoginSegue", sender: self)
        }
        if self.final_value == "company" {
            performSegue(withIdentifier: "employerLoginSegue", sender: self)
        }
        if self.final_value == "False" {
            self.errorLabel.text = "Incorrect email or password."
        }
        }
        
    AF.request("https://e3c1f471.ngrok.io/auth", method: .get, parameters: login).responseString { response in
              let data = response.value
              self.final_value = data!
              endgame(self)
              }
        
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
