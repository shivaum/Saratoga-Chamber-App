//
//  TBVC.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/19/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    
    var names = [String]()
    var identities = [String]()
    
    override func viewDidLoad() {
        
        names = ["About the Chamber","Chamber Members","Chamber Website","Chamber Facebook Page"]
        identities = ["A","B","C","D"]
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")
        
        cell!.backgroundColor = .whiteColor()
        
        cell?.textLabel!.text = names[indexPath.row]
        
        cell?.textLabel?.textColor = .blackColor()
        
        return cell!
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewControllerWithIdentifier(vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
        
    }
}
