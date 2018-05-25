//
//  Constants.swift
//  MeteoApp
//
//  Created by Davide Popolano on 21/05/18.
//  Copyright © 2018 Davide Popolano. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let WEATHER = "weather?"
let FORECAST = "forecast?"
let LATITUDE = "lat="
let VALUE_LATITUDE = "38.0176000"
let LONGITUDE = "&lon="
let VALUE_LONGITUDE = "12.5361700"
let APP_ID = "&appid="
let API_KEY = "8aff39798a580fa59f31361476c12fa5"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(WEATHER)\(LATITUDE)38.0176000\(LONGITUDE)12.5361700\(APP_ID)\(API_KEY)"
let FORECAST_URL = "\(BASE_URL)\(FORECAST)\(LATITUDE)38.0176000\(LONGITUDE)12.5361700\(APP_ID)\(API_KEY)"
