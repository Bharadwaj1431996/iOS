//
//  ViewController.swift
//  CameraPicker
//
//  Created by Bharadwaj on 22/09/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func experiment(){
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }


}

