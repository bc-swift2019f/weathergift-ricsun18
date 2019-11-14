//
//  WeatherLocation.swift
//  WeatherView
//
//  Created by Richard Sunden on 11/14/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import Foundation

class WeatherLocation: Codable {
    var name: String
    var coordinates: String
    
    init(name: String, coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
    
}
