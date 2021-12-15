//
//  MapLocation.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapLocation: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.836_167, longitude: 14.249_557),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
    )
    let annotation = [
        Location(name: "Royal Palace", coordinate: CLLocationCoordinate2D(
        latitude: 40.836_167, longitude: 14.249_557))
    ]
 
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: annotation) { Location in
            MapAnnotation(coordinate: Location.coordinate) {
                    Image("Position")
                    Text("Royal Palace")
                    .fixedSize()
                    .shadow(color: .secondary, radius: 5)
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct MapLocation_Previews: PreviewProvider {
    static var previews: some View {
        MapLocation()
    }
}
