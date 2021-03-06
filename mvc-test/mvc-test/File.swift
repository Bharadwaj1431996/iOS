//
//  File.swift
//  mvc-test
//
//  Created by Bharadwaj on 16/09/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import Foundation
class Person
{
    private var _firstName : String!
    private var _lastName : String!
    
    var firstName : String
        {
        return _firstName;
    }
    var lastName : String
        {
        return _lastName;
    }
    init(first: String , last :String)
    {
        self._firstName = first
        self._lastName = last
    }
    
    var fullName : String
        {
            return "\(_firstName) \(_lastName)"
    }
}