//
//  BackTableViewController.swift
//  Slide Out Menu
//
//  Created by Bryan Fein on 3/10/16.
//  Copyright © 2016 Bryan Fein. All rights reserved.
//

import Foundation

class BackTableViewController: UITableViewController {
    
    
    var tableArray = [String]()
    
    
    override func viewDidLoad() {
        
        tableArray = ["First", "Second", "Third"]
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath)
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
        
        
    }

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableArray.count
    }
    
    
    
  }


