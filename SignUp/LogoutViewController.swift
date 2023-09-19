//
//  LogoutViewController.swift
//  SignUp
//
//  Created by Adarsh Singh on 19/09/23.
//

import UIKit
import Parse
class LogoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func logout(_ sender: UIBarButtonItem) {
        PFUser.logOut()
        self.navigationController?.popToRootViewController(animated: true)
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
