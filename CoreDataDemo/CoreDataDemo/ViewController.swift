//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Admin on 27/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import UIKit
import CoreData

//struct user {
//    var name:String!
//    var age:NSDate!
//}
var users = [User]()

var appdel = UIApplication.sharedApplication().delegate as! AppDelegate
var context = appdel.managedObjectContext

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var refresh = UIRefreshControl()

    @IBOutlet weak var Tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh.backgroundColor=UIColor.greenColor()
        refresh.tintColor=UIColor.redColor()
        refresh.addTarget(self, action: "temp", forControlEvents: UIControlEvents.ValueChanged)
        self.Tableview.addSubview(refresh)
    }
    func temp (){
        sleep(5)
        refresh.endRefreshing()
    }
    override func viewWillAppear(animated: Bool) {

        
        var fetchdata = NSFetchRequest(entityName: "User")
        var data = context!.executeFetchRequest(fetchdata, error: nil) as! [User]
        users = data
        
        self.Tableview.reloadData()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        var cell = self.Tableview.dequeueReusableCellWithIdentifier("cell") as! TableViewCell
       
        cell.name.text = users[indexPath.row].name
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        var date = dateFormatter.stringFromDate(users[indexPath.row].age)
        cell.age.text = "\(date)"
        
        var image = UIImage(data: users[indexPath.row].image)
        cell.ImageView.image = image

        
        var color = users[indexPath.row].view as! UIColor
        cell.View.backgroundColor = UIColor.greenColor()
        cell.backgroundColor = color
        
//        cell.name.text = users[indexPath.row].valueForKeyPath("name") as? String
//        var temp = users[indexPath.row].valueForKeyPath("age") as! NSDate
//       
//        var dateFormatter = NSDateFormatter()
//        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
//        var date = dateFormatter.stringFromDate(temp)
//        
//        cell.age.text = "\(date)"
        
//        cell.name.text = users[indexPath.row].name
//        cell.age.text = "\(users[indexPath.row].age)"
        
        return cell
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
   
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
       
       
        if editingStyle == .Delete{
        context?.deleteObject(users[indexPath.row])
        
        context?.save(nil)
        users.removeAtIndex(indexPath.row)
        self.Tableview.reloadData()
    
        }
    }
   
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("houseShow", sender: nil)
    }
    
    @IBAction func AddData(sender: AnyObject) {
        
    performSegueWithIdentifier("show", sender: nil)
    
    }
}

