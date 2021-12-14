//
//  FavoritesView.swift
//  Nappoli
//
//  Created by Claudio Diener on 14/12/21.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("FavoriteView")
            }
            .navigationTitle("Favorites")
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
