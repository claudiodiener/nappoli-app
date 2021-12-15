//
//  MapView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI
import MapKit

@available(iOS 15.0, *)
struct MapView: View {
    @State private var showingSheet = false
    var body: some View {
        ZStack {
            MapLocation()
            VStack {
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        Button(action:{showingSheet.toggle()}) {
                            CardPlaces(place: ModelData().places[0])}
                        .sheet(isPresented: $showingSheet) {
                            DescriptionView(place: ModelData().places[0])
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

@available(iOS 15.0, *)
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
