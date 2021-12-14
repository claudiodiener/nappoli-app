//
//  DescriptionView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI

struct DescriptionView: View {
    @State var isFavorite = false
    var body: some View {
            ScrollView() {
                VStack (alignment: .leading) {
                    Text("Royal Palace")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    ZStack (alignment: .bottom){
                        Image("RoyalPalaceDescription")
                        HStack {
                            Spacer ()
                            Button(action: {
                                self.isFavorite.toggle()
                            }) {
                                Image(systemName: isFavorite ? "heart.circle" : "heart.circle.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 25)
                                    .shadow(color: .primary, radius: 5)
                            }
                        }
                        .padding()
                    }
                    Text("Description")
                        .font(.title)
                        .bold()
                        .padding()
                    Text("The Royal Palace of Naples (Italian: Palazzo Reale di Napoli, Neapolitan: Palazzo Riale ‘e Napule) is a palace, museum, and historical tourist destination located in central Naples, southern Italy. It was one of the four residences near Naples used by the House of Bourbon during their rule of the Kingdom of Naples (1735–1816) and later the Kingdom of the Two Sicilies (1816-1861). The others were the palaces of Caserta, Capodimonte overlooking Naples and Portici on the slopes of Vesuvius.")
                        .padding([.trailing, .leading])
                    Text("Open")
                        .font(.title)
                        .bold()
                        .padding()
                    HStack {
                        VStack (alignment: .leading) {
                            HStack {
                                Image(systemName: "calendar")
                                Text("Monday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                Text("Tuesday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.red)
                                Text("Wednesday")
                                    .foregroundColor(.red)
                            }
                            HStack {
                                Image(systemName: "calendar")
                                Text("Thursday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                Text("Friday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                Text("Saturday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                Text("Sunday")
                            }
                        }
                        Spacer()
                        VStack (alignment: .leading) {
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.red)
                                Text("Closed")
                                    .foregroundColor(.red)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                Text("9 AM - 8 PM")
                            }
                        }
                    }
                    .padding([.trailing, .leading])
                    Text("Price")
                        .font(.title)
                        .bold()
                        .padding()
                    Text("€ 6,00")
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.green)
                        .padding([.trailing, .leading])
                    Text("Position")
                        .font(.title)
                        .bold()
                        .padding()
                    MapLocation()
                        .frame(width: 414, height: 200)
                }
            }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
