//
//   Assignment3.swift
//  Assignment#3
//
//  Created by Dasha Chastokolenko on 2/4/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class Assignment3: NSObject {
    
    static func separator(_ followingTask: String) {
        print("---------------------\(followingTask)---------------------")
    }
    
    static func numberOfCharactersInName(_ myName: String) {
        let numberOfCharacters = myName.count
        print("In \"\(myName)\" number of characters is \( numberOfCharacters - 1)")
    }
    
    static func checkPatronymic(_ name: String) {
        let suffix = "na"
        if name.hasSuffix("na") {
            print("\"\(name) has ending \"\(suffix)")
        }
        else {
            print("\"\(name) doesn't have ending \"\(suffix)\"")
        }
    }
}
