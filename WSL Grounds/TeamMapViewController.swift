//
//  TeamMapViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 12/08/2022.
//

import UIKit
import MapKit
import CoreLocation

class TeamMapViewController: UIViewController {

    @IBOutlet weak var stadiumOnMap: MKMapView!
    
    let locMan:CLLocationManager=CLLocationManager()
    
    func setMapToGround() {
        let lat = (parent as! TeamViewController).stadiumLat
        let lon = (parent as! TeamViewController).stadiumLon
        let centerRegion: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        let spanRegion: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: centerRegion, span: spanRegion)
        stadiumOnMap.setRegion(mapRegion, animated: true)
    }
    
    override func viewDidLoad() {
        setMapToGround()
        super.viewDidLoad()
        self.locMan.requestWhenInUseAuthorization()
        // Do any additional setup after loading the view.
    }
}
