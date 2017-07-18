//
//  Notes.swift
//  Bored?
//
//  Created by Helen Cao on 7/13/17.
//  Copyright © 2017 Make School. All rights reserved.
//

//    let locationManager = CLLocationManager()
//
//    @IBOutlet weak var nameLabel: UILabel!
//
//    @IBOutlet weak var addressLabel: UILabel!
//
//    var placesClient: GMSPlacesClient!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        placesClient = GMSPlacesClient.shared()
//    }
//
//    @IBAction func getCurrentPlaceButtonTapped(_ sender: UIButton) {
//        placesClient.currentPlace(callback: {(GMSPlaceLikelihoodList, error) -> Void in
//            if let error = error{
//                print("Error finding location: \(error.localizedDescription)")
//                return
//            }
//            self.nameLabel.text  = "No current place"
//            self.addressLabel.text = " "
//
//            if let placeLikelihoodist = GMSPlaceLikelihoodList{
//                let place = placeLikelihoodist.likelihoods.first?.place
//                if let place = place{
//                    self.nameLabel.text = place.name
//                    self.addressLabel.text = place.formattedAddress?.components(separatedBy: ", ").joined(separator: "\n")
//
//                }
//            }
//
//        }
//    )}
//
//    @IBAction func pickPlaceButtonTapped(_ sender: UIButton) {
//        let center = CLLocationCoordinate2D(latitude: placeCoordinate.latitude, longitude: placeCoordinate.longitude)
//        let northEast = CLLocationCoordinate2D(latitude: center.latitude + 0.001, longitude: center.longitude + 0.001)
//        let southWest = CLLocationCoordinate2D(latitude: center.latitude - 0.001, longitude: center.longitude - 0.001)
//        let viewport = GMSCoordinateBounds(coordinate: northEast, coordinate: southWest)
//
//    }

//extension ViewController: CLLocationManagerDelegate{
//
//}

// Key for Google Places: AIzaSyCgMny9yReGFxObCluh8auo7ORCTsXeReQ
