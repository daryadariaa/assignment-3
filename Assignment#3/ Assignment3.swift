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
        name.hasSuffix("na") ? print("\"\(name) has ending \"\(suffix)\"") : print("\"\(name) doesn't have ending \"\(suffix)\"")
    }
    
    static func divideName(_ name: String) {
        var myName = name
        var newName = ""
        newName.append(myName[myName.startIndex])
        let uppercase = CharacterSet.uppercaseLetters
        for scalar in myName.unicodeScalars.dropFirst() {
            if uppercase.contains(scalar) {
                newName.append(" ")
            }
            let character = Character(scalar)
            newName.append(character)
        }
        let firstSpace = newName.firstIndex(of: " ")!
        let afterSpace = newName.index(after: firstSpace)
        let firstName = String(newName[..<firstSpace])
        let surname = String(newName[afterSpace..<newName.endIndex])
        print("My name is \(firstName)")
        print("My surname is \(surname)")
        print("FULL name is \(newName)")
    }
    
    static func reverseString(_ inputString: String) {
        var initialString = inputString
        var newString = ""
        for _ in 1...inputString.count {
            newString += String(initialString[initialString.index(before: initialString.endIndex)])
            initialString = String(initialString.unicodeScalars.dropLast())
        }
        print("Reverse string is \(newString)")
    }
}
