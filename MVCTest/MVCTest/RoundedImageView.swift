//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by Bharadwaj on 28/08/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    override func awakeFromNib() {
        self.layer.cornerRadius=5.0
        self.clipsToBounds=true
    }

}
