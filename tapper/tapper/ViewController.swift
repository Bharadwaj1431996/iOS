//
//  ViewController.swift
//  tapper
//
//  Created by Bharadwaj on 22/08/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var maxTabs:Int=0
    var currentTabs:Int=0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var howmanytaps:UITextField!
    @IBOutlet weak var playButton:UIButton!
    @IBOutlet weak var tapBtn:UIButton!
    @IBOutlet weak var tapsLbl:UILabel!
    @IBAction func onCoinTap(sender:UIButton!)
    {
        currentTabs=currentTabs+1
        UpdateTapsLbl()
        if isGameOver()
        {
            restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender :UIButton!)
    {
        
        
        if howmanytaps.text != nil && howmanytaps.text != ""
        {
            logo.hidden=true
            howmanytaps.hidden=true
            playButton.hidden=true
            
            tapBtn.hidden=false
            tapsLbl.hidden=false
            
            maxTabs=Int(howmanytaps.text!)!;
            currentTabs=0;
            UpdateTapsLbl()
        }
        
        
        
    }
    func restartGame()
    {
        maxTabs=0
        howmanytaps.text=""
        logo.hidden=false
        howmanytaps.hidden=false
        playButton.hidden=false
        
        tapBtn.hidden=true
        tapsLbl.hidden=true
        
    }
    func isGameOver()->Bool
    {
        if currentTabs>=maxTabs{
            return true
        }
        else
        {
            return false
        }
    }
    func UpdateTapsLbl()
    {
        tapsLbl.text="\(currentTabs)Taps"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

