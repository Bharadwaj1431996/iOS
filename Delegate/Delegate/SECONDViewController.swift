//
//  SecondViewController.swift
//  Delegate
//
//  Created by Bharadwaj on 04/10/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
protocol DataEnteredDelegate
{
    func userDidEnterInformation(info : String)
}
class SecondViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
    var delegate : DataEnteredDelegate? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hellow in ViewDidLoad second")

        // Do any additional setup after loading the view.
    }
    @IBAction func Senddata(sender: AnyObject) {
        if delegate != nil
        {
            let info : String = dataTextField.text!
            delegate!.userDidEnterInformation(info)
            print("hellow")
            self.navigationController?.popViewControllerAnimated(true)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
