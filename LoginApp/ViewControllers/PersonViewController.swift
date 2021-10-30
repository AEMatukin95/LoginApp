//
//  PersonViewController.swift
//  LoginApp
//
//  Created by Александр Матукин on 30.10.2021.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet var myCity: UILabel!
    @IBOutlet var myName: UILabel!
    @IBOutlet var myEmail: UILabel!
     
    var myNames = ""
    var myEmails = ""
    var myCitys = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myEmail.text = "\(myEmails)"
        myName.text = "\(myNames)"
        myCity.text = "\(myCitys)"
    }
    

    
}
