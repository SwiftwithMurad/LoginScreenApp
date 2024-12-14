//
//  WelcomeScreen.swift
//  LoginScreen
//
//  Created by Mac on 24.11.24.
//

import UIKit

class WelcomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "LoginScreen") as! LoginScreen
        navigationController?.show(controller, sender: nil)
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "RegisterScreen") as! RegisterScreen
        navigationController?.show(controller, sender: nil)
    }
}
