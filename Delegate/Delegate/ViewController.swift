//
//  ViewController.swift
//  Delegate
//
//  Created by Bharadwaj on 04/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController , DataEnteredDelegate{

    @IBOutlet weak var datalabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidEnterInformation(info: String) {
        datalabel.text = info
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender?.identifier == "second"
        {
            let secondVC : SecondViewController = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self;
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

