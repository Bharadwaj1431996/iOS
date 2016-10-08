//
//  ViewController.swift
//  PlayWithButton
//
//  Created by Bharadwaj on 08/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var pausePlayButton: UIButton!
    var buttonURL = NSURL();
   
    var  buttonAudioPlayer = AVAudioPlayer();
    var str : [String] = ["1","2","3","4","5"]
    var i : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for i in 0...4
        {
            print("\(i)")
        }
        
        buttonURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("roar", ofType: "mp3")!);
        do
        {
            buttonAudioPlayer = try AVAudioPlayer(contentsOfURL: buttonURL)
        }
        catch{
            print("Hi in view did load")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playAudio(sender: AnyObject) {
        buttonAudioPlayer.play();
    }
    
    @IBAction func StopAudioBtn(sender: AnyObject) {
        buttonAudioPlayer.stop()
    }
    @IBAction func restart(sender: AnyObject) {
        buttonAudioPlayer.stop()
        buttonAudioPlayer.play()
    }
    


}

