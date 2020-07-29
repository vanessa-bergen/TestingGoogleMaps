//
//  PlacesView.swift
//  TestingGoogleMaps
//
//  Created by Vanessa Bergen on 2020-07-29.
//  Copyright © 2020 Vanessa Bergen. All rights reserved.
//

import SwiftUI

struct PlacesView: View {
    
    @ObservedObject private var placesManager = PlacesManager()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(placesManager.places, id: \.place.placeID) { placeLikelihood in
                    PlacesRow(place: placeLikelihood.place)
                }
            }
            .navigationBarTitle("Nearby Locations")
        }
    }
}

struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
