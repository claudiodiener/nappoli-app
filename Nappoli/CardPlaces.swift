//
//  CardPlaces.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI

struct CardPlaces: View {
    @EnvironmentObject var model: ModelData
    @State private var isShowingSheet = false
    var place: Place
    
    var index: Int {
        return model.places.firstIndex { placeArr in
            placeArr.id == place.id
        }!
    }

    var body: some View {
        
        let isFavorite = model.places[index].isFavorite
        
        VStack (spacing: 0) {
            ZStack (alignment: .bottom) {
                Image(model.places[index].imageCardName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                HStack {
                    Text(model.places[index].name)
                        .font(.system(size:25))
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(.white)
                        .shadow(color: .primary, radius: 5)
                    Spacer()
                    Button(action: {
                        model.toggleFavorite(place)
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
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
                        Text(self.place.openWeek)
                            .font(.system(size:11))
                            .bold()
                            .foregroundColor(.black)
                        Spacer()
                        Image(systemName: "clock.fill")
                            .foregroundColor(.black)
                        Text(self.place.openHours)
                            .font(.system(size:11))
                            .bold()
                            .foregroundColor(.black)
                    }
                    .padding()
                    HStack {
                        Text(self.place.price)
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
        .sheet(isPresented: $isShowingSheet, content:  {
                DescriptionView(place: place)
            })
        .onTapGesture {
            isShowingSheet = true
        }
    }
}

struct CardPlaces_Previews: PreviewProvider {
    static var previews: some View {
        CardPlaces(place: ModelData().places[0])
            .environmentObject(ModelData())
    }
}
