//
//  Person.swift
//  MVCTest
//
//  Created by Bharadwaj on 28/08/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import Foundation
class Person
{
    private var _FirstName: String!
    private var _SecondName: String!
    var firstName: String!
    {
        get
        {
            return _FirstName;
        }
        set
        {
            if newValue != nil && newValue != ""
            {
                _FirstName=newValue
            }
        }
    }
    var lastName:String!
    {
        return _SecondName;
    }
    init(first :String, last :String)
    {
        self._FirstName=first;
        self._SecondName=last;
    }
    var fullName: String
    {
        return "\(_FirstName) \(_SecondName)"
    }
}
