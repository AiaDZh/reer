//
//  WriteLoginViewController.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 15.11.2023.
//

import UIKit

class WriteLoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "writeLogin" {
            if loginTextField.text != "" {
                let destination = segue.destination as! RatingViewController
                destination.arrayPlayer.append(Player(login: loginTextField.text, score:10))
            }
        }
    }
}
    

