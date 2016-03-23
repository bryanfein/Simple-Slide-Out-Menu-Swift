//
//  SecondViewController.swift
//  Slide Out Menu
//
//  Created by Bryan Fein on 3/10/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import Foundation


class SecondViewController : ViewController {
    
    
    override func viewDidLoad() {
        
    self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())

        
    }
    
}