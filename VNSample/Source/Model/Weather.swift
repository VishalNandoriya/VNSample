//
//  CountryList.swift
//  ProjectStructure
//
//  Created by Mac-Vishal on 28/03/18.
//  Copyright © 2018 Mac-Vishal. All rights reserved.
//

import UIKit
//typealias Weather = [WeatherElement]

class Weather: SQLTable, Decodable {
    var version: Int?
    var key, type: String?
    var rank: Int?
    var localizedName, englishName, primaryPostalCode: String?
    var region, country: Country?
    var administrativeArea: AdministrativeArea?
    var timeZone: TimeZoneS?
    var geoPosition: GeoPosition?
    var isAlias: Bool?
    var supplementalAdminAreas: [SupplementalAdminArea]?
    var dataSets: [String]?
    
    enum CodingKeys: String, CodingKey {
        case version = "Version"
        case key = "Key"
        case type = "Type"
        case rank = "Rank"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
        case primaryPostalCode = "PrimaryPostalCode"
        case region = "Region"
        case country = "Country"
        case administrativeArea = "AdministrativeArea"
        case timeZone = "TimeZone"
        case geoPosition = "GeoPosition"
        case isAlias = "IsAlias"
        case supplementalAdminAreas = "SupplementalAdminAreas"
        case dataSets = "DataSets"
    }
}

class AdministrativeArea:SQLTable, Decodable {
    var administrativeid, localizedName, englishName: String?
    var level: Int?
    var localizedType, englishType, countryID: String?
    
    enum CodingKeys: String, CodingKey {
        case administrativeid = "ID"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
        case level = "Level"
        case localizedType = "LocalizedType"
        case englishType = "EnglishType"
        case countryID = "CountryID"
    }
}

class Country:SQLTable, Decodable {
    var countryid, localizedName, englishName: String?
    
    enum CodingKeys: String, CodingKey {
        case countryid = "ID"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
    }
}

class GeoPosition:SQLTable, Decodable {
    var latitude, longitude: Double?
    var elevation: Elevation?
    
    enum CodingKeys: String, CodingKey {
        case latitude = "Latitude"
        case longitude = "Longitude"
        case elevation = "Elevation"
    }
}

class Elevation:SQLTable, Decodable {
    var metric, imperial: Imperial?
    
    enum CodingKeys: String, CodingKey {
        case metric = "Metric"
        case imperial = "Imperial"
    }
}

class Imperial:SQLTable, Decodable {
    var value: Double?
    var unit: String?
    var unitType: Int?
    
    enum CodingKeys: String, CodingKey {
        case value = "Value"
        case unit = "Unit"
        case unitType = "UnitType"
    }
}

class SupplementalAdminArea:SQLTable, Decodable {
    var level: Int?
    var localizedName, englishName: String?
    
    enum CodingKeys: String, CodingKey {
        case level = "Level"
        case localizedName = "LocalizedName"
        case englishName = "EnglishName"
    }
}

class TimeZoneS:SQLTable, Decodable {
    var code, name: String?
    var gmtOffset: Double?
    var isDaylightSaving: Bool?
    var nextOffsetChange: Int?
    
    enum CodingKeys: String, CodingKey {
        case code = "Code"
        case name = "Name"
        case gmtOffset = "GmtOffset"
        case isDaylightSaving = "IsDaylightSaving"
        case nextOffsetChange = "NextOffsetChange"
    }
}

