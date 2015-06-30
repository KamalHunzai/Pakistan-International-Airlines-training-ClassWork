//
//  ViewController.swift
//  datePicker
//
//  Created by Admin on 25/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        println(self.DatePicker.date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

