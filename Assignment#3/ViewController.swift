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
    }
}

