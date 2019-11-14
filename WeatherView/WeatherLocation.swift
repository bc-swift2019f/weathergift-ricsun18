//
//  WeatherLocation.swift
//  WeatherView
//
//  Created by Richard Sunden on 11/13/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import Foundation
import Alamofire

class WeatherLocation {
    var name = ""
    var coordinates = ""
    
    func getWeather() {
        let weatherURL = urlBase + urlAPIKey + coordinates
        Alamofire.request(weatherURL).responseJSON { response in
            
        }
    }
}
