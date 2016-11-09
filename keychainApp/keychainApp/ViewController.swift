//
//  ViewController.swift
//  keychainApp
//
//  Created by Divy Tolia on 11/8/16.
//  Copyright © 2016 DesignMoreWeb. All rights reserved.
//

import UIKit
import Security

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userName2: UITextField!
    @IBOutlet weak var password: UILabel!
    @IBAction func saveButtonPress(_ sender: Any) {
        let userName:String = "12"
        let passWord:String = "10"
        
//Saving of data
        let isSaved: Bool = KeychainWrapper.standard.set(userName, forKey:"userId")
        let passIsSaved: Bool = KeychainWrapper.standard.set(passWord, forKey: "pass")
        
    }
    @IBAction func getPasswordPress(_ sender: Any) {
        let retrievedString: String? = KeychainWrapper.standard.string(forKey: "pass")
        password.text = retrievedString
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

