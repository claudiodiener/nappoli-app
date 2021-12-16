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
    @State var region: MKCoordinateRegion
    @State var places: [Place]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places) { place in
            MapAnnotation(coordinate: place.locationCoordinate) {
                Image("Position")
                Text(place.name)
                    .fixedSize()
                    .shadow(color: .secondary, radius: 5)
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct MapLocation_Previews: PreviewProvider {
    static var previews: some View {
        let region =  MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 40.836_167, longitude: 14.249_557),
            span: MKCoordinateSpan(latitudeDelta: 0.100, longitudeDelta: 0.100)
        )
        MapLocation(region: region, places: ModelData().places)
    }
}
