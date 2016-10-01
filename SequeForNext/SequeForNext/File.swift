//
//  File.swift
//  SequeForNext
//
//  Created by Bharadwaj on 01/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import Foundation
import UIKit
class TabelViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    var arr = ["Bharawad","Daya","India","Sri Lanka"];
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
        cell.textLabel?.text = arr[indexPath.row];
        return cell;
    }
    
    
    
}

