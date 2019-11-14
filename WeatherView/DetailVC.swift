//
//  DetailVC.swift
//  WeatherView
//
//  Created by Richard Sunden on 10/16/19.
//  Copyright © 2019 Richard Sunden. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var currentImage: UIImageView!
    
    var currentPage = 0
    var locationsArray = [WeatherLocation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        locationLabel.text = locationsArray[currentPage].name
        
    }

}
