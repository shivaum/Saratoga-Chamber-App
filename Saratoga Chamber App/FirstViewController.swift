//
//  FirstViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/18/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit
import MapKit

class FirstViewController: UIViewController {
    
    var search = ""
    let mapViewController = MapViewController()
    
    
    @IBAction func restaurants(sender: AnyObject) {
        search = "restaurants around me"
    }
    
    @IBAction func hiking(sender: AnyObject) {
        search = "trails around me"
    }
    
    @IBAction func parks(sender: AnyObject) {
        search = "parks around me"
    }
    
    @IBAction func games(sender: AnyObject) {
        search = "events around me"
    }

    @IBAction func museums(sender: AnyObject) {
        search = "museum"
    }
    
    @IBAction func church(sender: AnyObject) {
        search = "church"
    }

    @IBAction func hotels(sender: AnyObject) {
        search = "The Inn At Saratoga"
    }
    
    
    @IBAction func banks(sender: AnyObject) {
         search = "bank"
    }
    
    @IBAction func wine(sender: AnyObject) {
        search = "alcohol"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
       
        let locationVC = segue.destinationViewController as! MapViewController
        locationVC.searchTerm = ((sender?.accessibilityLabel)! + " around me")
        print ("search term using label " + locationVC.searchTerm)
        segue.destinationViewController.title = sender?.accessibilityLabel
        print ("search term from first view " + search)
        print (sender?.accessibilityLabel)
    }
 
}




