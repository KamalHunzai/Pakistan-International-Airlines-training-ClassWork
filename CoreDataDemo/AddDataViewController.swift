//
//  AddDataViewController.swift
//  CoreDataDemo
//
//  Created by Admin on 27/06/2015.
//  Copyright (c) 2015 Kamal Hunzai. All rights reserved.
//

import UIKit
import CoreData

class AddDataViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var DObDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SaveData(sender: AnyObject) {
        
//        users.append(user(name:NameTextField.text,age:DObDatePicker.date))
    
        SaveDataToCoreData(NameTextField.text, age: DObDatePicker.date)
        self.navigationController?.popViewControllerAnimated(true)
      
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {

        self.NameTextField.resignFirstResponder()
    }
    
    func SaveDataToCoreData(name:String,age:NSDate){
       
        var appdel = UIApplication.sharedApplication().delegate as! AppDelegate
        var context = appdel.managedObjectContext
        
        var entity = NSEntityDescription.entityForName("User", inManagedObjectContext: context!)
        
//        var user = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: context)
        
        var user = User(entity: entity!, insertIntoManagedObjectContext: context)
        user.name = name
        user.age = age
        
        
        var image = UIImage(named: "flat-avatar.png")
        var BinaryData = UIImagePNGRepresentation(image)
        user.image = BinaryData
        
        
        var viewColor = UIColor.yellowColor()
        user.view = viewColor
        
//        user.setValue(name, forKey: "name")
//        user.setValue(age, forKey: "age")
        
        
        
        var error:NSError?
        if (context?.save(&error) != nil){
//            println(error?.description)
        }
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
