//
//  CardsSheet.swift
//  Nappoli
//
//  Created by Claudio Diener on 15/12/21.
//

import SwiftUI

struct CardsSheet: View {
    @EnvironmentObject var model: ModelData
    @State private var showingSheet = false
    
    var body: some View {
        ForEach(model.places, id: \.id) { place in
                CardPlaces(place: place)
                    .padding()
        }
    }
}

struct CardsSheet_Previews: PreviewProvider {
    static var previews: some View {
        CardsSheet()
    }
}
