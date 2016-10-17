//
//  TableViewCell2.swift
//  Sindhi_Patashala
//
//  Created by Bharadwaj on 10/10/16.
//  Copyright © 2016 MindEfy. All rights reserved.
//

import UIKit
import AVFoundation
class TableViewCell2: UITableViewCell {
     var buttonURL = NSURL();
   
    @IBOutlet weak var mainLab: UILabel!
    
    @IBOutlet weak var thirdLab: UILabel!
    @IBOutlet weak var secondLab: UILabel!
    
    
    var  buttonAudioPlayer = AVAudioPlayer();
    
    
    var str : String!;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        do
        {
            buttonURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(str, ofType: "mp3")!)
            buttonAudioPlayer = try AVAudioPlayer(contentsOfURL: buttonURL)
        }
        catch
        {
            print("Hi in view did load")
        }
    }
    
   
    
    @IBAction func playButtin(sender: AnyObject) {
        buttonAudioPlayer.play();
    }
    
}
