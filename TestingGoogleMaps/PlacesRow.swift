//
//  PlacesRow.swift
//  TestingGoogleMaps
//
//  Created by Vanessa Bergen on 2020-07-29.
//  Copyright © 2020 Vanessa Bergen. All rights reserved.
//

import SwiftUI
import GooglePlaces

struct PlacesRow: View {
    
    var place: GMSPlace
    
    var body: some View {
        HStack {
            Text(place.name ?? "")
        }
    }
}

