//
//  createAnAccountViewController.swift
//  MusicPlayer
//
//  Created by Xavier La Rosa on 11/27/18.
//  Copyright © 2018 Xavier La Rosa. All rights reserved.
//

import UIKit

class createAnAccountViewController: UIViewController {
    var accounts = [
        "xavier": "larosa272",
        "joe": "123",
        "kathy": "123"
    ]
    
    @IBOutlet weak var checkerLabel: UILabel!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var passAgaintext: UITextField!
    
    //label.isHidden = true // hide
    //label.isHidden = false // show
     // hide
    
    @IBAction func checkAvailTapped(_ sender: Any) {
        checkerLabel.isHidden = true
        if(passText.text == passAgaintext.text){
            print("valid password")
        }
        else {
            print("invalid, passwords do not match")
        }
        for (key, value) in accounts {
            //print("\(key) = \(value)")
            if (key == userText.text){
                print("Invalid " + userText.text! + " is already taken")
                checkerLabel.isHidden = false
            }
            else if(userText.text == nil){
                print("null user")
            }
            else{
                self.performSegue(withIdentifier: "fromCreateToGenreSegue", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
