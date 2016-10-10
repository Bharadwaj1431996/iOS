//
//  Common.swift
//  Sindhi_Patashala
//
//  Created by Bharadwaj on 10/10/16.
//  Copyright © 2016 MindEfy. All rights reserved.
//

import UIKit
import AVFoundation
struct cellData
{
    let cell :Int!;
    let main : String!;
    let second : String!;
    let third : String!
}
class Common: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var arrayOfCellData = [cellData]();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        arrayOfCellData = [cellData(cell : 1,main : "Bharadwaj",second: "Sai",third: "gethu"),cellData(cell : 2,main : "Balaji",second: "Cena",third: "Wate"),cellData(cell : 3,main : "Obama",second: "Gethutha",third: "America")];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainLab.text = arrayOfCellData[indexPath.row].main
            cell.secondLab.text = arrayOfCellData[indexPath.row].second
            cell.thirdLab.text = arrayOfCellData[indexPath.row].third
            
            cell.str = "1";
            return cell
            
        }
        else if arrayOfCellData[indexPath.row].cell == 2
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainLab.text = arrayOfCellData[indexPath.row].main
            cell.secondLab.text = arrayOfCellData[indexPath.row].second
            cell.thirdLab.text = arrayOfCellData[indexPath.row].third
            //cell.buttonURL=arrayOfCellData[indexPath.row].url
            cell.str = "2";
            return cell
        }
        else
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell2", owner: self, options: nil)?.first as! TableViewCell2
            cell.mainLab.text = arrayOfCellData[indexPath.row].main
            cell.secondLab.text = arrayOfCellData[indexPath.row].second
            cell.thirdLab.text = arrayOfCellData[indexPath.row].third
            cell.str = "3"
            return cell
            
        }
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.row == 1
        {
            return 100;
        }
        else
        {
            return 160;
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
