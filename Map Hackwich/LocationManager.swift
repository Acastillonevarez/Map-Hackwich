//
//  LocationManager.swift
//  Map Hackwich
//
//  Created by Andrew Castillo Nevarez on 2/8/23.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var geocoder = CLGeocoder()
    var locationManager = CLLocationManager()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
