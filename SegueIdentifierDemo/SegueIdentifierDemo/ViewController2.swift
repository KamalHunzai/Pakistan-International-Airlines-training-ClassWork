//
//  ViewController2.swift
//  SegueIdentifierDemo
//
//  Created by Admin on 18/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    
    var segID : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.segID != nil {
            self.lbl.text = self.segID
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
