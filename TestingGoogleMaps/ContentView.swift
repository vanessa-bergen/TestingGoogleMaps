//
//  ContentView.swift
//  TestingGoogleMaps
//
//  Created by Vanessa Bergen on 2020-07-29.
//  Copyright © 2020 Vanessa Bergen. All rights reserved.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            GoogleMapsView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            PlacesView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
