//
//  Forecast.swift
//  MeteoApp
//
//  Created by Davide Popolano on 24/05/18.
//  Copyright © 2018 Davide Popolano. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    private var _date: String!
    private var _weatherType:String!
    private var _highTemp: String!
    private var _lowTemp: String!
    private var _time: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    var time: String {
        if _time == nil {
            _time = ""
        }
        return _time
    }
    
    init(weatherDict: Dictionary<String, Any>) {
        if let main = weatherDict["main"] as? Dictionary<String, Any> {
            if let tempLow = main["temp_min"] as? Double {
                let temp = tempLow - 273.15
                let tempCurr = Int(round(1000 * temp) / 1000)
                self._lowTemp = "\(tempCurr)"
            }
            if let tempHigh = main["temp_max"] as? Double {
                let temp = tempHigh - 273.15
                let tempCurr = Int(round(1000 * temp) / 1000)
                self._highTemp = "\(tempCurr)"
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, Any>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        
        if let unixDate = weatherDict["dt"] as? Double {
            let date = Date(timeIntervalSince1970: unixDate)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .none
            dateFormatter.timeStyle = .short
            self._time = dateFormatter.string(from: date)
            self._date = date.dayOfTheWeek()
        }
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}




