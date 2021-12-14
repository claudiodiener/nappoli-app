//
//  TabBarView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct TabBarView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem({
                    Image(systemName: "map")
                    Text("Map")
                })
            PlacesView()
                .tabItem({
                    Image(systemName: "mappin.and.ellipse")
                    Text("Places")
                })
            Text("FavoritesView")
                .tabItem({
                    Image(systemName: "heart.fill")
                    Text("Favorites")
                })
        }
    }
}

@available(iOS 15.0, *)
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
