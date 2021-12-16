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
    var body: some View {
        NavigationView {
            ScrollView() {
                VStack {
                    CardsSheet()
                }
            }
            .add(self.searchBar)
            .navigationTitle("Places")
        }
    }
}

@available(iOS 15.0, *)
struct PlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesView()
    }
}
