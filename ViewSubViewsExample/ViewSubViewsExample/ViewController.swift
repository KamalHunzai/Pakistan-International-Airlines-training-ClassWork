//
//  ViewController.swift
//  ViewSubViewsExample
//
//  Created by Admin on 18/06/2015.
//  Copyright (c) 2015 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mainView = self.view
        let v1 = UIView(frame: CGRectMake(113, 111, 132, 194))
        v1.backgroundColor = UIColor(red: 1, green: 0.4, blue: 0.7, alpha: 1)
        let v2 = UIView(frame: CGRectMake(41 , 56, 132, 194))
        v2.backgroundColor = UIColor(red: 0.5, green: 1, blue: 0, alpha: 1)
        let v3 = UIView(frame: CGRectMake(43, 197, 160, 230))
        v3.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
        mainView.addSubview(v1)
        v1.addSubview(v2)
        mainView.addSubview(v3)


        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

