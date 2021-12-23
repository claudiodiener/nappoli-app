//
//  PlacesView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct PlacesView: View{
    @ObservedObject var searchBar: SearchBar = SearchBar()
    @EnvironmentObject var model: ModelData
    
    var filtered: [Place] {
        return model.searchTerm.isEmpty ? model.places :  model.places.filter { $0.name.contains(model.searchTerm) }
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView() {
                VStack {
                    ForEach(filtered, id: \.id) { place in
                        CardPlaces(place: place)
                            .padding()
                    }
                }
            }
            .searchable(text: $model.searchTerm)
            .navigationTitle("Places")
            //            .add(self.searchBar)
            
        }
    }
}

@available(iOS 15.0, *)
struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
