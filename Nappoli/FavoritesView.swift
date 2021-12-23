//
//  FavoritesView.swift
//  Nappoli
//
//  Created by Claudio Diener on 14/12/21.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var model: ModelData
    @State private var showingSheet = false
    @State var placeID = 0
    var body: some View {
        
        let favorites = model.places.filter{ $0.isFavorite }
        
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(favorites, id: \.id) { place in
                        CardPlaces(place: place)
                            .padding()
                    }
                }.navigationTitle("Favorites")
            }
        }
        }
    }
    
    struct FavoriteView_Previews: PreviewProvider {
        static var previews: some View {
            FavoriteView()
                .environmentObject(ModelData())
        }
    }
