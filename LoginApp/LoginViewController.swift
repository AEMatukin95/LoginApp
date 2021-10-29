//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Матукин on 29.10.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let userName = "User"
    private let userPassword = "password"
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return}
        welcomeVC.user = userName
    }

    @IBAction func logInAction() {
        if userNameTF.text != userName || userPasswordTF.text != userPassword {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: userPasswordTF)
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your name is \(userName) 😉")
        : showAlert(title: "Ooops!", message: "Your password is \(userPassword) 😉")
    }
    
    @IBAction func unwid(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        userPasswordTF.text = ""
    }
}




extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

//MARK: - UITextFieldDelegate

//extension LoginViewController: UITextViewDelegate {
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        view.endEditing(true)
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == userNameTF {
//            userPasswordTF.becomeFirstResponder()
//        } else {
//            logInAction()
//            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
//        }
//        return true
//    }
//}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            userPasswordTF.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
}
