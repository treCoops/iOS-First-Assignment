//
//  BirthdayController.swift
//  iOS Assignment 1
//
//  Created by treCoops on 7/21/20.
//  Copyright © 2020 treCoops. All rights reserved.
//


import UIKit

class BirthdayController: UIViewController {
    @IBOutlet weak var txt_birthday: UITextFieldLine!
    
    private var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker();
        datePicker?.datePickerMode = .date;
        
        datePicker?.addTarget(self, action: #selector(BirthdayController.datePickerChanged(picker:)),for: .valueChanged)

        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(BirthdayController.viewTapped(gestureRecognizer:))));
        
        txt_birthday.inputView = datePicker;
       
    
    }
    
    @objc func datePickerChanged(picker: UIDatePicker) {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = "MM/dd/yyyy";
        txt_birthday.text = dateFormatter.string(from: picker.date);
        view.endEditing(true);
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
       view.endEditing(true);
    }

}
