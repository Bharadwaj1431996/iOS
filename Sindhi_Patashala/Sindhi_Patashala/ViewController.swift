//
//  ViewController.swift
//  Sindhi_Patashala
//
//  Created by Bharadwaj on 10/10/16.
//  Copyright © 2016 MindEfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var features = ["Common","Greeting","Numbers","Time","Fruits","Vegetable","Favorites","Animals","Studies","Sindhi Ages","Relations",
                    "Date","Colors","Poems and stories","Eating","Native","Health","Body Organs"]
    var identifierString = [String]();
    var imagesName = ["common","greetings","numbers","time","jackfruit","vegetables","fav","animals","studies","bookstack","relation",
                      "date","light","bookshelf","eating","sindhinative","health","bodyorgan"]
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return features.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) 
        cell.textLabel?.text = features[indexPath.row];
        let imageName = imagesName[indexPath.row]
        let image = UIImage(named: imageName)
        print("\(indexPath.row)")
        let newImage = resizeImage(image!, toTheSize: CGSizeMake(70, 70))
        let cellImageLayer: CALayer?  = cell.imageView?.layer
        cellImageLayer!.cornerRadius = cellImageLayer!.frame.size.width / 2
        cellImageLayer!.masksToBounds = true
        cell.imageView?.image = newImage
        return cell
    }
    func resizeImage(image:UIImage, toTheSize size:CGSize)->UIImage{
        
        
        let scale = CGFloat(max(size.width/image.size.width,
            size.height/image.size.height))
        let width:CGFloat  = image.size.width * scale
        let height:CGFloat = image.size.height * scale;
        
        let rr:CGRect = CGRectMake( 0, 0, width, height);
        
        UIGraphicsBeginImageContextWithOptions(size, false, 0);
        image.drawInRect(rr)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        return newImage
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row<2
        {
            let lcVc = identifierString[indexPath.row]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(lcVc)
        self.navigationController?.pushViewController(viewController!, animated: true)
        }
        else{
            print("Not yet" )
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        identifierString=["A","B"];
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

