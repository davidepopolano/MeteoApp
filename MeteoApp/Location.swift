//
//  Location.swift
//  MeteoApp
//
//  Created by Davide Popolano on 25/05/18.
//  Copyright © 2018 Davide Popolano. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
