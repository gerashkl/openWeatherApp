
import Foundation
import MapKit


struct ChangeLocationViewControllerViewModel{
    
   static var locationName = "geo"
    func changeLocationTitle (){
//        searchVC.searchBar.text = "new text"
//        WeatherViewControllerViewModel.init(hugo: "1234hyufuyfuyfuyfuy55556454445454556654444")
////        weatherHumidityLabel.text = "New text"
    }
//    static var LocationСoordinate:Place = Place(name: "", identifier: "")
//    struct LocationСoordinate {
//        init place: Place
//    }
    
    func changeLocation( coordinates:CLLocationCoordinate2D) ->String{
//           let title = title
//           let coordinates = coordinates
        let coordinatesFourQuery = "lat=\(coordinates.latitude)&lon=\(coordinates.longitude)"
        return(coordinatesFourQuery)
        }
    
    
}
