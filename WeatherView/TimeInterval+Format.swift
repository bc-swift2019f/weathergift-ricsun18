//
//  TimeInterval+Format.swift
//  WeatherView
//
//  Created by Richard Sunden on 11/14/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import Foundation

extension TimeInterval {
    
    func format(timeZone: String, dateFormatter: DateFormatter) -> String {
        let usableDate = Date(timeIntervalSince1970: self)
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let dateString = dateFormatter.string(from: usableDate)
        return dateString
    }
}
