//
//  ReverseGeocoding .swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 07.10.2022.
//

import Foundation

// MARK: - ReverseGeocodingElement
struct ReverseGeocodingElement: Codable {
    let name: String
    let localNames: [String: String]
    let lat, lon: Double
    let country, state: String

    enum CodingKeys: String, CodingKey {
        case name
        case localNames = "local_names"
        case lat, lon, country, state
    }
}

typealias ReverseGeocoding = [ReverseGeocodingElement]
