//
//  LoginScreen.swift
//  LoginScreen
//
//  Created by Mac on 24.11.24.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.layer.borderColor = UIColor.purple.cgColor
        signInButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    

    @IBAction func createNewAccButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "RegisterScreen") as! RegisterScreen
        controller.sendDataBack = { UserInfo in
            self.emailField.text = UserInfo.email
            self.passwordField.text = UserInfo.password
        }
        navigationController?.show(controller, sender: nil)
       
    }
    

}
