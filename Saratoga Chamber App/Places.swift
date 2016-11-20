//
//  Places.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/20/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import Foundation
import MapKit
import AddressBook

class Places: NSObject, MKAnnotation {
    var myCoordinate: CLLocationCoordinate2D
    let title: String
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
//    func mapItem() -> MKMapItem {
//        let addressDictionary = [String(kABPersonAddressStreetKey): subtitle]
//        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: addressDictionary)
//        
//        let mapItem = MKMapItem(placemark: placemark)
//        mapItem.name = title
//        
//        return mapItem
//    }
    
    var coordinate: CLLocationCoordinate2D {
        return myCoordinate
    }
}