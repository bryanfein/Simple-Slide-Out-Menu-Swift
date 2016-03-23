//
//  ViewController.swift
//  Slide Out Menu
//
//  Created by Bryan Fein on 3/10/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var open: UIBarButtonItem!
    @IBOutlet var label: UILabel!
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //the action is from the custom framework "revealToggle:"
        open.target = self.revealViewController()
        open.action = Selector("revealToggle:")
       
        
        //add a pan gesture to show the slide out menu
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if varView == 0 {
            
            label.text = "Strings"
            
        }else {
            
            label.text = "Others"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}

