//
//  PlacesManager.swift
//  TestingGoogleMaps
//
//  Created by Vanessa Bergen on 2020-07-29.
//  Copyright © 2020 Vanessa Bergen. All rights reserved.
//

import GooglePlaces

class PlacesManager: NSObject, ObservableObject {
    
    // initialize google places client
    private var placesClient = GMSPlacesClient.shared()
    
    // this will hold an array of places nearby
    @Published var places = [GMSPlaceLikelihood]()
    
    override init() {
        super.init()
        currentPlacesList { (places) in
            guard let places = places else { return }
            self.places = places
        }
    }
    
    func currentPlacesList(completion: @escaping (([GMSPlaceLikelihood]?) -> Void)) {
        // loading a list of nearby places from google
        placesClient.currentPlace { (placeLikelyHoodList, error) in
            if let error = error {
                print("Places failed to initialize with error \(error)")
                completion(nil)
                return
            }
            
            guard let placeLikelyHoodList = placeLikelyHoodList else { return }
            // updating the places variable
            self.places = placeLikelyHoodList.likelihoods
            print(self.places)
            completion(self.places)
        }
    }
    
    
}
