//
//  ViewController.swift
//  SequeForNext
//
//  Created by Bharadwaj on 01/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func getMe(sender: AnyObject) {
        performSegueWithIdentifier("second", sender: self)
    }

}

