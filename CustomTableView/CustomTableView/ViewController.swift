import UIKit
import AVFoundation
struct cellData
{
    let cell :Int!;
    let lab : String!;
    let url : NSURL!;
}
class ViewController: UITableViewController
{
    var arrayOfCellData = [cellData]();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        arrayOfCellData = [cellData(cell : 1, lab : "Bharadwa",url : NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("1", ofType: "mp3")!)),cellData(cell : 2, lab : "Dinesh P",url : NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("1", ofType: "mp3")!)),cellData(cell : 3, lab : "Dinesh SOmu",url : NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("2", ofType: "mp3")!))];
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
        
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.newLabb.text = arrayOfCellData[indexPath.row].lab
            cell.urlText = arrayOfCellData[indexPath.row].cell;
            cell.str = "2";
            return cell
            
        }
        else if arrayOfCellData[indexPath.row].cell == 2
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.newLabb.text = arrayOfCellData[indexPath.row].lab
            cell.urlText = 2;
            //cell.buttonURL=arrayOfCellData[indexPath.row].url
            cell.str = "2";
            return cell
        }
        else
        {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.newLabb.text = arrayOfCellData[indexPath.row].lab
            //cell.buttonURL=arrayOfCellData[indexPath.row].url
            cell.str = "1"
            return cell
   
        }
        
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if arrayOfCellData[indexPath.row].cell == 1
        {
            return 150
        }
        else if arrayOfCellData[indexPath.row].cell == 2
        {
            return 220
        }
        else
        {
            return 150
        }
    }
    


}

