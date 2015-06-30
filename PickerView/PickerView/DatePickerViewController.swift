//
//  DatePickerViewController.swift
//  PickerView
//
//  Created by Admin on 25/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet var datePicker: [UIDatePicker]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(sender: AnyObject) {
    
        let message = "The date and time you selected is \(date)"
        let alert = UIAlertController(
        title: "Date and Time Selected",
        message: message,
        preferredStyle: .Alert)
        let action = UIAlertAction(
        title: "That's so true!",
        style: .Default,
        handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
