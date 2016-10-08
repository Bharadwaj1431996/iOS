//
//  TableViewCell1.swift
//  CustomTableView
//
//  Created by Bharadwaj on 08/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
import AVFoundation

class TableViewCell1: UITableViewCell {
    var buttonURL = NSURL();
    var str : String! = "1";
    var urlText : Int!
    var  buttonAudioPlayer = AVAudioPlayer();
    @IBOutlet weak var newLabb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
        
       
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
         print("\(urlText)")
        do
        {
            buttonURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(str, ofType: "mp3")!)
            buttonAudioPlayer = try AVAudioPlayer(contentsOfURL: buttonURL)
        }
        catch{
            print("Hi in view did load")
        }
    }
    
    @IBAction func PlayTouch(sender: AnyObject)
    {
        
         buttonAudioPlayer.play();
    }
    @IBAction func ShareTouch(sender: AnyObject) {
    }
}
