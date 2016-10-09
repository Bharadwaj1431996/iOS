//
//  ViewController.swift
//  ToDoCoreData
//
//  Created by Bharadwaj on 09/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UITableViewController {
    var listItems = [NSManagedObject]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: Selector("addItem"))
    }
    func addItem()
    {
        let alertController = UIAlertController(title: "Enter the to do ", message: "Type..", preferredStyle: UIAlertControllerStyle.Alert)
        let confirmAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.Default, handler: ({
            (_) in
           if let field = alertController.textFields![0] as? UITextField
           {
                self.saveItem(field.text!)
                self.tableView.reloadData()
            }
            
        }))
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
        alertController.addTextFieldWithConfigurationHandler({
            (textfield) in
            textfield.placeholder = "Please add"
            
        })
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    func saveItem(itemToSave : String)
    {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managegContext = appDelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("ListEntity", inManagedObjectContext: managegContext)
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managegContext);
        item.setValue(itemToSave, forKey: "item")
        do
        {
            try managegContext.save()
            listItems.append(item)
        }
        catch
        {
            print("Do this ")
        }
        
        
    }
    override func viewWillAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managegContext = appDelegate.managedObjectContext
        
        let fetchRequest = NSFetchRequest(entityName: "ListEntity")
        
        do{
            let results = try managegContext.executeFetchRequest(fetchRequest)
            listItems = results as! [NSManagedObject]
            
        }
        catch
        {
            print("IN saving ")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        let items = listItems[indexPath.row]
        cell.textLabel?.text = items.valueForKey("item") as! String
        
        
        
        return cell;
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managegContext = appDelegate.managedObjectContext
        //for Design
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Left)
        
        managegContext.deleteObject(listItems[indexPath.row])
        listItems.removeAtIndex(indexPath.row)
        self.tableView.reloadData()
    }

}

