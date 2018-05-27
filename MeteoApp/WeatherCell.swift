//
//  WeatherCell.swift
//  MeteoApp
//
//  Created by Davide Popolano on 25/05/18.
//  Copyright © 2018 Davide Popolano. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(forecast: Forecast) {
        self.lowTempLabel.text = "\(forecast.lowTemp)°"
        self.highTempLabel.text = "\(forecast.highTemp)°"
        self.weatherTypeLabel.text = forecast.weatherType
        self.dayLabel.text = forecast.date.capitalized
        self.weatherIcon.image = UIImage(named: "\(forecast.weatherType)")
        self.timeLabel.text = forecast.time
    }
}
