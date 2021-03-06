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
        let newMyName = myName.replacingOccurrences(of: " ", with: "")
        let numberOfCharacters = newMyName.count
        print("In \"\(myName)\" number of characters is \(numberOfCharacters)")
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
    
    static func addDecimalDigits(inputNumber: Int) {
        var newString = String(inputNumber)
        print("Old NUMBER without digits is \(newString)")
        var finalString = ""
        let index = newString.count / 3
        if newString.count % 3 == 0 {
            for _ in 1..<index {
                newString.insert(",", at: newString.index(newString.endIndex, offsetBy: -3))
                let range = newString.index(newString.endIndex, offsetBy: -4)..<newString.endIndex
                finalString.insert(contentsOf: newString[range], at: finalString.startIndex)
                newString = String(newString.unicodeScalars.dropLast(4))
            }
            print("Number with added decimal digits is \(newString + finalString)")
        }
        else {
            for _ in 0..<index {
                newString.insert(",", at: newString.index(newString.endIndex, offsetBy: -3))
                let range = newString.index(newString.endIndex, offsetBy: -4)..<newString.endIndex
                finalString.insert(contentsOf: newString[range], at: finalString.startIndex)
                newString = String(newString.unicodeScalars.dropLast(4))
            }
            print("Number with added decimal digits is \(newString + finalString)")
        }
    }
    
    static func passcodeSecurityChecking(passcode: String) {
        var counter = 0
        var countLowerCases = 0
        var countUpperCases = 0
        var countSymbols = 0
        func checkCounter(_ newCounter: Int) {
            if newCounter != 0 {
                counter += 1
            }
        }
        let numbersInPasscode = Int(passcode.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        if numbersInPasscode != nil {
            counter += 1
        }
        let uppercase = CharacterSet.uppercaseLetters
        for scalar in passcode.unicodeScalars {
            if uppercase.contains(scalar) {
                countUpperCases += 1
            }
        }
        checkCounter(countUpperCases)
        let lowercase = CharacterSet.lowercaseLetters
        for scalar in passcode.unicodeScalars {
            if lowercase.contains(scalar) {
                countLowerCases += 1
            }
        }
        checkCounter(countLowerCases)
        let symbolsChecking = CharacterSet.symbols
        let punctuationSymbolsChecking = CharacterSet.punctuationCharacters
        for scalar in passcode.unicodeScalars {
            if symbolsChecking.contains(scalar) || punctuationSymbolsChecking.contains(scalar) {
                countSymbols += 1
            }
        }
        checkCounter(countSymbols)
        print("Your PASSCODE complexity is \(counter)")
    }
    
    static func arraySorting(array: [Int]) {
        var newArray = array
        for i in 0..<newArray.count {
            for j in 0..<newArray.count {
                if newArray[i] < newArray[j] {
                    newArray.swapAt(j, i)
                }
            }
        }
        //        for i in 1..<newArray.count {
        //                if i < newArray.count {
        //                    if newArray[i] == newArray[i-1] {
        //                        newArray.remove(at: i-1)
        //                    }
        //                }
        //            }
        print(newArray)
    }
}
