//
//  ViewController.swift
//  Calculator
//
//  Created by Bharadwaj on 25/08/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController
{
    var btnSound :AVAudioPlayer!
    enum Operator: String
    {
        case Divide = "/"
        case Multiply = "*"
        case Sub = "-"
        case add = "+"
        case empty = "Empty"
    }
    var runningNumber=""
    var leftValStr=""
    var rightValStr=""
    var currentOperation :Operator = Operator.empty
    var result = ""
    @IBAction func onEqualPressed(sender: AnyObject)
    {
        processOperation(currentOperation)
    }
    
    @IBAction func onSubPressed(sender: AnyObject)
    {
        processOperation(Operator.Sub)
    }
    
    @IBAction func onAddPressed(sender: AnyObject)
    {
        processOperation(Operator.add)
    }
    
    @IBAction func onMultiplyPressed(sender: AnyObject)
    {
        processOperation(Operator.Multiply)
    }
    @IBAction func onDividePressed(sender: AnyObject)
    {
        processOperation(Operator.Divide)
        
    }
    
    func processOperation(op :Operator)
    {
        playSound()
        if currentOperation != Operator.empty
        {
            //Run
            if runningNumber != ""
            {
                rightValStr = runningNumber
                runningNumber = ""
            
                if currentOperation == Operator.Multiply
                {
                    result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                
                }
                else if currentOperation == Operator.Divide
                {
                    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                }
                else if currentOperation == Operator.Sub
                {
                    result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                }
                else if currentOperation == Operator.add
                {
                    result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
                
            leftValStr = result
            display.text = result
          
            }
            currentOperation = op
        }
        else
        {
            //First Time na We should come here
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = op
        }
    }
    func playSound()
    {
        if btnSound.playing
        {
            btnSound.stop()
        }
        else
        {
            btnSound.play()
        }
    }
    @IBOutlet weak var display: UILabel!
    var userInTheMiddleOfTheText:Bool=false
    @IBAction func onClick(sender: UIButton)
    {
        playSound()
        let digit=sender.currentTitle!;
        if userInTheMiddleOfTheText
        {
            runningNumber += "\(sender.currentTitle!)"
            display!.text = runningNumber
        }
        else
        {
            runningNumber += "\(sender.currentTitle!)"
            display!.text!=digit
        }
        userInTheMiddleOfTheText=true
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let path=NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundURL=NSURL(fileURLWithPath: path!)
        do
        {
            try btnSound=AVAudioPlayer(contentsOfURL: soundURL)
            btnSound.prepareToPlay()
        }
        catch let err as NSError
        {
            print(err.debugDescription);
        }
    }
}

