//
//  WeatherLocation.swift
//  WeatherView
//
//  Created by Richard Sunden on 11/13/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class WeatherLocation {
    var name = ""
    var coordinates = ""
    var currentTemp = "--"
    
    func getWeather(completed: @escaping () -> ()) {
        let weatherURL = urlBase + urlAPIKey + coordinates
        Alamofire.request(weatherURL).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                if let temperature = json["currently"]["temperature"].double {
                    print("***** temperature inside getWeather = \(temperature)")
                    let roundedTemp = String(format: "%3.f", temperature)
                    self.currentTemp = roundedTemp + "º"
                } else {
                    print("Could not return a temperature.")
                }
            case .failure(let error):
                print(error)
            }
            completed()
        }
    }
}
