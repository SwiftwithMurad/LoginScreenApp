//
//  RegisterScreen.swift
//  LoginScreen
//
//  Created by Mac on 24.11.24.
//

import UIKit

struct UserInfo {
    let email: String
    let password: String
}

class RegisterScreen: UIViewController {

    var sendDataBack: ((UserInfo) -> Void)?
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    var info: UserInfo?
    
    @IBAction func googleButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func alreadyButtonTapped(_ sender: Any) {
//        let controller = storyboard?.instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
//        navigationController?.show(controller, sender: nil)
        
        if let email = emailField.text, !email.isEmpty,
           let password = passwordField.text, !email.isEmpty,
           let confirm = confirmPasswordField.text, !confirm.isEmpty {
            if password == confirm {
                sendDataBack?(UserInfo.init(email: email, password: password))
                navigationController?.popViewController(animated: true)
            }
            
        }
        
    }
}
