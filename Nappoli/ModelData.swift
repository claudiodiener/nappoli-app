//
//  ModelData.swift
//  Nappoli
//
//  Created by Claudio Diener on 14/12/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var places: [Place] = load("places.json")
    
    @Published var searchTerm = ""
    
    
    /*
    func getPlace(id: String) -> Place {
        let index = places.firstIndex { placeArr in
            placeArr.id == place.id
        }
        if let index = index {
            return places[index]
        }
    }*/
    
    func toggleFavorite(_ place: Place) {
        let index = places.firstIndex { placeArr in
            placeArr.id == place.id
        }
        if let index = index {
            places[index].isFavorite.toggle()
        }
    }
    

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

