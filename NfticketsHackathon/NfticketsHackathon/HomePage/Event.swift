//
//  Event.swift
//  NfticketsHackathon
//
//  Created by Joe Devonshire on 13/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Event: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var country: String
    var location: String
    var date: String
    var price: String
    var url: URL
    var isFavorite: Bool
    var isFeatured: Bool 
    
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case concert = "Concert"
        case festival = "Festival"
        case sport = "Sport"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
        
        
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}

