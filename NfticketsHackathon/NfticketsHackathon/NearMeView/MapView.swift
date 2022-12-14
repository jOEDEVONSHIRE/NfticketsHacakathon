//
//  MapView.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 17/08/2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    
    
    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Near You")
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
