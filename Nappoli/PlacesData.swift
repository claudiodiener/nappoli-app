//
//  PlacesData.swift
//  Nappoli
//
//  Created by Claudio Diener on 14/12/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Place: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var imageCardName: String
    var isFavorite: Bool
    var openWeek: String
    var openHours: String
    var price: String
    var imageDescriptionName: String
    var description: String
    var mondayHours: String
    var tuesdayHours: String
    var wednesdayHours: String
    var thursdayHours: String
    var fridayhours: String
    var saturdayHours: String
    var sundayHours: String
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
