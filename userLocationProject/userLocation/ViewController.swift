//
//  ViewController.swift
//  userLocation
//
//  Created by Sebastian Hette on 19.09.2016.
//  Copyright © 2016 MAGNUMIUM. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    //Map
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var label: UILabel!
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location = locations[0]
        
        //let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        //let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        //let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        //map.setRegion(region, animated: true)
        
        print(location.altitude)
        print(location.speed)
        
        //self.map.showsUserLocation = true
        
        CLGeocoder().reverseGeocodeLocation(location) { (placemark, error) in
            if error != nil
            {
                print("THERE WAS AN ERROR")
            }
            else
            {
                if let place = placemark?[0]
                {
                    if let checker = place.subThoroughfare
                    {
                       self.label.text = "\(place.locality!), \n \(place.country!) "
                    }
                    
                }
            }
        }
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

