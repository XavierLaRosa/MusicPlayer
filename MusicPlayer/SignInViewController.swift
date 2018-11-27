//
//  SignInViewController.swift
//  MusicPlayer
//
//  Created by Xavier La Rosa on 11/26/18.
//  Copyright © 2018 Xavier La Rosa. All rights reserved.
//

import UIKit
/*protocol ProfileDelegate {
    func checkAccountExists(name: String, password: String)
    
}*/
class SignInViewController: UIViewController {
    //var profileDelegate : ProfileDelegate?
    var accounts = [
        "xavier": "larosa272",
        "joe": "123",
        "kathy": "123"
    ]
    
    @IBOutlet weak var userText: UITextField!
    
    @IBOutlet weak var passText: UITextField!
    
    @IBAction func signInTapped(_ sender: Any) {
        for (key,value) in accounts {
            //print("\(key) = \(value)")
           
            if (key == userText.text && value == passText.text){
                print("Welcome " + userText.text! + " " + passText.text!)
        }
            else{
                //print("Sorry")
            }
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


