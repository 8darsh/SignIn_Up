//
//  SignUpViewController.swift
//  SignUp
//
//  Created by Adarsh Singh on 19/09/23.
//

import UIKit
import Parse
class SignUpViewController: UIViewController {
    @IBOutlet var mail: UITextField!
    
    @IBOutlet var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func signUpBtn(_ sender: UIButton) {
        let user = PFUser()
        user.username = self.mail.text
        user.password = self.password.text
        
       
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
            
            if let error = error {
                let ac = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Ok", style: .default))
                self.present(ac, animated: true)
            } else {
                self.navigationController?.popToRootViewController(animated: true)
                let ac = UIAlertController(title: "Success", message: "Account has been successfully created", preferredStyle: .alert)
                ac.addAction(UIAlertAction(title: "Ok", style: .default))
                self.present(ac, animated: true)
                
            }
        }
        
        
    }
    
    

}
