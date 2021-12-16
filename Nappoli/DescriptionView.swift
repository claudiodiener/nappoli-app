//
//  DescriptionView.swift
//  Nappoli
//
//  Created by Claudio Diener on 11/12/21.
//

import SwiftUI
import MapKit

struct DescriptionView: View {
    var place: Place
    @State var region: MKCoordinateRegion
    @State var isFavorite: Bool
    
    init(place: Place) {
        self.place = place
        self.isFavorite = place.isFavorite
        
        self.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: place.locationCoordinate.latitude,
                longitude: place.locationCoordinate.longitude
            ),
            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        )
    }
    var body: some View {
            ScrollView() {
                VStack (alignment: .leading) {
                    Text(self.place.name)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    ZStack (alignment: .bottom){
                        Image(self.place.imageDescriptionName)
                        HStack {
                            Spacer ()
                            Button(action: {
                                isFavorite.toggle()
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
                    Text(self.place.description)
                        .padding([.trailing, .leading])
                    Text("Open")
                        .font(.title)
                        .bold()
                        .padding()
                    HStack {
                        VStack (alignment: .leading) {
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Monday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Tuesday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Wednesday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Thursday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Friday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Saturday")
                            }
                            HStack {
                                Image(systemName: "calendar")
                                    .foregroundColor(.gray)
                                Text("Sunday")
                            }
                        }
                        Spacer()
                        VStack (alignment: .leading) {
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.mondayHours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.tuesdayHours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.wednesdayHours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.thursdayHours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.fridayhours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.saturdayHours)
                            }
                            HStack {
                                Image(systemName: "clock.fill")
                                    .foregroundColor(.gray)
                                Text(self.place.sundayHours)
                            }
                        }
                    }
                    .padding([.trailing, .leading])
                    Text("Price")
                        .font(.title)
                        .bold()
                        .padding()
                    Text(self.place.price)
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.green)
                        .padding([.trailing, .leading])
                    Text("Position")
                        .font(.title)
                        .bold()
                        .padding()
                    MapLocation(
                        region: self.region,
                        places: [self.place]
                    ).frame(width: 414, height: 200)
                }
            }
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(place: ModelData().places[0])
    }
}
