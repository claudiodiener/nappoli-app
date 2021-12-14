//
//  MapLocation.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI
import MapKit

struct MapLocation: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.836_167, longitude: 14.249_557),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    var body: some View {
        Map(coordinateRegion: $region)
           .ignoresSafeArea(edges: .top)
    }
}

struct MapLocation_Previews: PreviewProvider {
    static var previews: some View {
        MapLocation()
    }
}
