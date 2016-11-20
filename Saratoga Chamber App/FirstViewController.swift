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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressedRestaurant(sender: AnyObject) {
        search = "food"
        
    }
    
    @IBAction func pressedTrails(sender: AnyObject) {
        search = "trail"
    }
    
    @IBAction func pressedRecreation(sender: AnyObject) {
        search = "park"
    }
    
    @IBAction func pressedEntertainment(sender: AnyObject) {
        search = "games"
    }
    
    @IBAction func pressedMuseums(sender: AnyObject) {
        search = "museum"
    }
    
    @IBAction func pressedChurch(sender: AnyObject) {
        search = "church"
    }
    
    @IBAction func pressedHotels(sender: AnyObject) {
        search = "The Inn At Saratoga"
    }
    
    @IBAction func pressedBanks(sender: AnyObject) {
        search = "bank"
    }
    
    
    @IBAction func pressedWine(sender: AnyObject) {
        search = "wine"
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let locationVC = segue.destinationViewController as! MapViewController
        
        locationVC.searchTerm = search
    }

    
 
}


