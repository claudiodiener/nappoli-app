//
//  CardPlaces.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI

struct CardPlaces: View {
    var place: Place
    @State var isFavorite: Bool
    init(place: Place) {
        self.place = place
        self.isFavorite = place.isFavorite
    }
    var body: some View {
        VStack (spacing: 0) {
            ZStack (alignment: .bottom) {
                Image("RoyalPalacePlaces")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                HStack {
                    Text(self.place.name)
                        .font(.system(size:25))
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(.white)
                        .shadow(color: .primary, radius: 5)
                    Spacer()
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: place.isFavorite ? "heart.circle" : "heart.circle.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .shadow(color: .primary, radius: 5)
                    }
                }
                .padding()
            }
            ZStack {
                Color.white
                VStack {
                    HStack {
                        Image(systemName: "calendar")
                            .foregroundColor(.black)
                        Text("Mon Tue Thu Fri Sat Sun")
                            .font(.system(size:11))
                            .bold()
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "clock.fill")
                            .foregroundColor(.black)
                        Text("9 AM - 8 PM")
                            .font(.system(size:11))
                            .bold()
                            .foregroundColor(.black)
                    }
                    .padding()
                    HStack {
                        Text("€ 6,00")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.green)
                        Spacer()
                        Text("More")
                            .font(.system(size: 25))
                            .bold()
                            .foregroundColor(.black)
                        Image(systemName: "chevron.right")
                            .foregroundColor(.black)
                    }
                    .padding()
                }
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
            .shadow(radius: 5)
            .frame(width: 360, height: 200)
    }
}

struct CardPlaces_Previews: PreviewProvider {
    static var previews: some View {
        CardPlaces(place: ModelData().places[0])
    }
}
