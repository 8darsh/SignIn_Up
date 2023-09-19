//
//  ViewController.swift
//  SignUp
//
//  Created by Adarsh Singh on 19/09/23.
//

import UIKit
import Parse
class LogInViewController: UIViewController {
    @IBOutlet var mailLog: UITextField!
    @IBOutlet var passwordLog: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func loginBtn(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogoutViewController") as! LogoutViewController
        PFUser.logInWithUsername(inBackground: self.mailLog.text!, password: self.passwordLog.text!) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
              self.navigationController?.pushViewController(vc, animated: true)
//              let ac = UIAlertController(title: "Login Succesful", message: "", preferredStyle: .alert)
//              ac.addAction(UIAlertAction(title: "Ok", style: .default))
//              self.present(ac, animated: true)
              
          } else {
              let ac = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
              ac.addAction(UIAlertAction(title: "Ok", style: .default))
              self.present(ac, animated: true)
          }
        }
        
    }
    
    @IBAction func signUpLog(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") as! SignUpViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}



