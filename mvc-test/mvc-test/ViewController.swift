//
//  ViewController.swift
//  mvc-test
//
//  Created by Bharadwaj on 16/09/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FullName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let person = Person(first : "John" , last: "HandCock");
        FullName.text = person.fullName
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

