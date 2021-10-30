//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Александр Матукин on 30.10.2021.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var welcomeInfo: UILabel!
    
    @IBOutlet var myFamily: UILabel!
    @IBOutlet var myPet: UILabel!
    @IBOutlet var myWork: UILabel!
    
    var myWelcomeInfo = ""
    var myFamilys = ""
    var myPets = ""
    var myWorks = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeInfo.text = "\(myWelcomeInfo)"
        myPet.text = "\(myPets)"
        myFamily.text = "\(myFamilys)"
        myWork.text = "\(myWorks)"
    }
    

    

}
