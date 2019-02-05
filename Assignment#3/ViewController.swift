//
//  ViewController.swift
//  Assignment#3
//
//  Created by Dasha Chastokolenko on 2/4/19.
//  Copyright © 2019 Dasha Chastokolenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Assignment3.separator("TASK#1")
        Assignment3.numberOfCharactersInName("Darya Chastokolenko")
        Assignment3.separator("TASK#2")
        Assignment3.checkPatronymic("Igorevna")
        Assignment3.separator("TASK#3")
        Assignment3.divideName("DaryaChastokolenko")
        Assignment3.separator("TASK#4")
        Assignment3.reverseString("Qwe")
        Assignment3.separator("TASK#5")
        Assignment3.addDecimalDigits(inputNumber: 123456234)
        Assignment3.separator("TASK#6")
        Assignment3.passcodeSecurityChecking(passcode: "Ru6*RcrKbh^63BuY")
    }
}

