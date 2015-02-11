//
//  Model.swift
//  SwiftWatch
//
//  Created by Alex Hudson on 2/10/15.
//  Copyright (c) 2015 Alex Hudson. All rights reserved.
//

import Foundation

public class Model: NSObject {

    //var myName: String = "alex"

    var myName: String

    init(name: String){

        self.myName = name
    }
    
    func phrase() -> String {
        return myName + " is testing swift"
    }
   
}
