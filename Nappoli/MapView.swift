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
    @StateObject var model = ModelData()
    @State private var showingSheet = false
    var body: some View {
        ZStack {
            MapLocation()
            VStack {
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        CardsSheet()
                    }
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
