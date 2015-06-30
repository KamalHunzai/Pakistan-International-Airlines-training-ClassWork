//
//  ViewController.swift
//  SegueIdentifierDemo
//
//  Created by Admin on 18/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let kButton1 : String = "Button 1"
    let kButton0 : String = "Button 0"
    
    @IBAction func click(sender: UIButton) {
        self.performSegueWithIdentifier("DetailSeg", sender: kButton1)
        
    }
    @IBAction func btn0Clicked(sender: UIButton) {
        self.performSegueWithIdentifier("DetailSeg", sender: kButton0)
    }
    
    
    
    @IBAction func presentModallyClick(sender: UIButton) {
        
        self.performSegueWithIdentifier("presentProgSeg", sender: nil)
    }
    
    
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        println(__FUNCTION__)
        
        if segue.identifier == "DetailSeg" {
            let desVC = segue.destinationViewController as? ViewController2
            
            let recive = sender as? String
            
            println(recive)
            
            desVC?.segID = recive
        }
        
    }

}

