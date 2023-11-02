//
//  GooglePlacesManager.swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 05.10.2022.
//

import Foundation
import GooglePlaces
import CoreLocation

struct Place{
    let name: String
    let identifier: String
}

final class GooglePlacesManager{
    static let shared = GooglePlacesManager()
    
    var newCoordinate:CLLocationCoordinate2D? //дослідити зміну
    
//    static var coordinatesFourQuery:String = "lat=48.55&lon=24.42"
//    var coordinatesFourQuery:String = changeLocation(coordinates: GooglePlacesManager.newCoordinate)
    
    private let client = GMSPlacesClient.shared()
    private init(){}
    
    enum PlacesError: Error {
        case failedToFind
        case failedToGetCoordinate
    }
    
    //    public func setUp(){
    //        GMSPlacesClient.provideAPIKey("AIzaSyB39iawnienIxDUd7LLJviRr6oaF19bCys")
    //    }
    public func findPlaces (
        query: String,
        completion: @escaping (Result<[Place], Error>)->Void
    ){
        let filter = GMSAutocompleteFilter()
        filter.type = .geocode
        client.findAutocompletePredictions(
            fromQuery: query,
            filter: filter,
            sessionToken: nil
        ) { results , error in
            guard let results = results, error == nil else{
                completion(.failure(PlacesError.failedToFind))
                return
            }
            let places: [Place] = results.compactMap ({ Place(
                name: $0.attributedPrimaryText.string,
                //                name: $0.attributedFullText.string,
                identifier: $0.placeID
            )
            })
            
            completion(.success(places))
            
        }
    }
    
    public func resolveLocation(
        for place : Place,
        complition:@escaping (Result<CLLocationCoordinate2D, Error>)->Void
    ){
        client.fetchPlace(
            fromPlaceID: place.identifier,
            placeFields: .coordinate,
            sessionToken: nil
        ) { googlePlace, error in
            guard let googlePlace = googlePlace, error == nil else{
                complition(.failure(PlacesError.failedToGetCoordinate))
                return
            }
            
            let coordinate = CLLocationCoordinate2D(
                latitude: googlePlace.coordinate.latitude,
                longitude: googlePlace.coordinate.longitude
            )
            
            complition(.success(coordinate))
  
            
//            GooglePlacesManager.coordinatesFourQuery = self.changeLocation(coordinates: coordinate)

            
            
            //            let location = CLLocation(coordinate: coordinate)
            
//      googlePlace.coordinate.latitude
//      googlePlace.coordinate.longitude
         
        }
    }
    func changeLocation( coordinates:CLLocationCoordinate2D?) ->String{
//           let title = title
//           let coordinates = coordinates
        
        guard let coordinates = coordinates else { return "lat=48.55&lon=24.42" }
            
        
        let coordinatesFourQuery = "lat=\(coordinates.latitude)&lon=\(coordinates.longitude)"
        return(coordinatesFourQuery)
        }
    
    
}
