//
//  Constants.swift
//  MeteoApp
//
//  Created by Davide Popolano on 21/05/18.
//  Copyright © 2018 Davide Popolano. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "8aff39798a580fa59f31361476c12fa5"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)38.0176000\(LONGITUDE)12.5361700\(APP_ID)\(API_KEY)"
