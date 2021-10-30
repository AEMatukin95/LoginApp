//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Матукин on 29.10.2021.
//

import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(user)!"
    }
    

    

}
