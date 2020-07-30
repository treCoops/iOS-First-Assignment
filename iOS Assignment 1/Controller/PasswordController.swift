//
//  PasswordController.swift
//  iOS Assignment 1
//
//  Created by treCoops on 7/21/20.
//  Copyright © 2020 treCoops. All rights reserved.
//

import UIKit

class PasswordController: UIViewController {
    
    @IBOutlet weak var txt_password: UITextField!
    var status = true;
    
    @IBAction func btn_show(_ sender: UIButton) {
        if(status){
            txt_password.isSecureTextEntry = false;
            status = false;
        }else{
            txt_password.isSecureTextEntry = true;
            status = true;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
