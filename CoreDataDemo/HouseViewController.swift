//
//  HouseViewController.swift
//  CoreDataDemo
//
//  Created by Admin on 30/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var HouseTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = self.HouseTableView.dequeueReusableCellWithIdentifier("houseCell") as! HouseTableViewCell
        cell.address.text = "karachi"
        cell.rooms.text = "\(Int16(10))"
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    

    @IBAction func Add(sender: AnyObject) {
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
