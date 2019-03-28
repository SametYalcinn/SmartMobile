//
//  ViewController.swift
//  LocationDemo
//
//  Created by Student on 28/02/2019.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    let locationManager: CLLocationManager = CLLocationManager()
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let currentLocation = locations.last {
            centerMapOn(location: currentLocation)
            addAnnotation(location: currentLocation)
        }
    }
    
    func addAnnotation(location: CLLocation){
        let annotation = MKPointAnnotation()
        annotation.coordinate = location.coordinate
        annotation.title = "I visited this location"
        annotation.subtitle = "\(location.coordinate)"
        mapView.addAnnotation(annotation)
    }
    
    func centerMapOn(location: CLLocation){
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location.coordinate, span: span)
        mapView.setRegion(region, animated: true)
    }
}
