//
//  MapViewController.swift
//  Saratoga Chamber App 2
//
//  Created by Shivaum Kumar on 7/19/16.
//  Copyright © 2016 Shivaum Kumar. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var searchTerm = ""
    var userSearch = [MKPlacemark]()
    let locationManager = CLLocationManager()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    required init(coder aDecoder: NSCoder)  {
        super.init(coder: aDecoder)!
    }

    
    
    override func viewDidLoad() {
        
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        }
        
        
        self.mapView.delegate = self
        
        self.locationManager.delegate = self
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.locationManager.requestAlwaysAuthorization()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapView.showsUserLocation = true
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        let request = MKLocalSearchRequest()
        
        request.naturalLanguageQuery = searchTerm
        
        request.region = mapView.region
        
        let term = searchTerm
        
        print (term)
        
        let search = MKLocalSearch(request: request)
        search.startWithCompletionHandler{ response, error in
            guard response != nil else {
                print("There was an error searching for: \(request.naturalLanguageQuery) error: \(error)")
                return
            }
            for item in (response!.mapItems){
                if let mi = item as? MKMapItem {
                    self.userSearch.append(mi.placemark)
                    let dropPin = MKPointAnnotation()
                    dropPin.coordinate = mi.placemark.coordinate
                    dropPin.title = "\(mi.name!)"
                    self.mapView.addAnnotation(dropPin)
                }
            }
        }

    
        super.viewDidLoad()
       

    }
    
 
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        let center = CLLocationCoordinate2D(latitude: (location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!)
        
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.04))

        self.mapView.setRegion(region, animated: true)
        self.locationManager.stopUpdatingLocation()

    }
    

}


