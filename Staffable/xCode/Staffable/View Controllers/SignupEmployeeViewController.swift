//
//  SignupEmployeeViewController.swift
//  Staffable
//
//  Created by Dylan Reimer on 10/26/19.
//  Copyright © 2019 Dylan Reimer. All rights reserved.
//

import UIKit
import Alamofire

class SignupEmployeeViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var addressField: UITextField!
    
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
    
    struct SignupData: Codable {
        let name: String
        let address: String
        let email: String
        let password: String
    }
    
    /*
    func isValidEmail(emailStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: emailStr)
    }
 */
    
    
    @IBAction func employeeSignUpButton(_ sender: Any) {
        
        let name = self.nameField.text
        let address = self.addressField.text
        let email = self.emailField.text
        let password = self.passwordField.text
        
        /*
        if isValidEmail(emailStr: email!) == false {
            self.errorLabel.text = "Please enter a valid email."
            return
        }
        */
        
        let signup = SignupData(name: name!,
                                address: address!,
                                email: email!,
                                password: password!)
        
        AF.request("https://e3c1f471.ngrok.io/new_user", parameters: signup).response {response in debugPrint(response)}
        
        performSegue(withIdentifier: "afterEmployeeSignupSegue", sender: self)
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
