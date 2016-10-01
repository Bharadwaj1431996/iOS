//
//  ViewController.swift
//  TableView
//
//  Created by Bharadwaj on 01/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var textarray = ["Bharadwa","bharad","daya","love India","Hate pakis"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        cell.textLabel?.text = textarray[indexPath.row]
   
        return cell
        
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textarray.count;
    }

}

