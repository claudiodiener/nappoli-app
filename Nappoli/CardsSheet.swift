//
//  CardsSheet.swift
//  Nappoli
//
//  Created by Claudio Diener on 15/12/21.
//

import SwiftUI

struct CardsSheet: View {
    @StateObject var model = ModelData()
    @State private var showingSheet = false
    @State var placeID = 0
    var body: some View {
        // Swift Bug
        // @see https://developer.apple.com/forums/thread/652080
        Text("\(placeID)")
            .hidden()
        ForEach(model.places.indices, id: \.self) { index in
            Button(action:{
                placeID = index
                showingSheet = true
            }) {
                CardPlaces(place: model.places[index])
            }
            .padding()
        }.sheet(isPresented: $showingSheet, content:  {
            DescriptionView(place: model.places[placeID])
        })
    }
}

struct CardsSheet_Previews: PreviewProvider {
    static var previews: some View {
        CardsSheet()
    }
}
