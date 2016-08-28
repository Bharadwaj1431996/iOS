//
//  ViewController.swift
//  MVCTest
//
//  Created by Bharadwaj on 28/08/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var renameField: UITextField!
    @IBOutlet weak var ToyStory: UIImageView!
    @IBOutlet weak var fullName: UILabel!
    let person = Person(first: "Bharadwaj", last: "Daya");
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        
    }

    @IBAction func RenamePressed(sender: AnyObject) {
        if let txt = renameField.text
        {
            person.firstName = txt
            fullName.text=person.fullName
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

