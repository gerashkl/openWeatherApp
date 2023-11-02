//
//  ChangeLocationViewController.swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 05.10.2022.
//

import UIKit
import MapKit

class ChangeLocationViewController: UIViewController,UISearchResultsUpdating, MKMapViewDelegate,UIGestureRecognizerDelegate {
    
    let mapView = MKMapView()
    let searchVC = UISearchController(searchResultsController: ResultsViewController())
    let viewModel = ChangeLocationViewControllerViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mapView)
        searchVC.searchBar.backgroundColor = .secondarySystemBackground
        searchVC.searchResultsUpdater = self
        navigationItem.searchController = searchVC
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        title = "Select a new location"
        //        mapView.frame = view.bounds
        mapView.frame = CGRect(x: 0, y: view.safeAreaInsets.top,
                               width: view.frame.size.width,
                               height: view.frame.size.height-view.safeAreaInsets.top)
        mapView.delegate = self
        let longTapOnMap = UILongPressGestureRecognizer(target: self, action: #selector(ChangeLocationViewController.handleLongtapGesture(gestureRecognizer:)))
        self.mapView.addGestureRecognizer(longTapOnMap)
    }
    
    @objc func handleLongtapGesture(gestureRecognizer: UILongPressGestureRecognizer){
        if gestureRecognizer.state != UILongPressGestureRecognizer.State.ended{
            let touchLocation = gestureRecognizer.location(in: mapView)
            let locationCoordinate = mapView.convert(touchLocation, toCoordinateFrom: mapView)
            
            print("tap on map coordinate \(locationCoordinate)")
            print("tap on map coordinate \(locationCoordinate.latitude), \(locationCoordinate.longitude)")
            //            if gestureRecognizer.state != UILongPressGestureRecognizer.State.began
            
            didTapPlace(with: locationCoordinate)
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let query = searchController.searchBar.text,
              !query.trimmingCharacters(in: .whitespaces).isEmpty,
              let resultsVC = searchController.searchResultsController as? ResultsViewController else{
            return
        }
        resultsVC.delegate = self
        
        GooglePlacesManager.shared.findPlaces(query: query) { result in
            switch result{
            case.success(let places):
                print(places)
                DispatchQueue.main.async {
                    resultsVC.update(with: places)
                }
                
            case.failure(let error):
                print(error)
            }
        }
    }
    
    
    
}





extension ChangeLocationViewController: ResultsViewControllerDelegate{
    //перенести цю функцію
    func didTapPlace(with coordinates: CLLocationCoordinate2D) {
        searchVC.searchBar.resignFirstResponder()
        searchVC.dismiss(animated: true)
        //        changeLocationTitle()
        
        
        //Remove all map pin
        let annotations = mapView.annotations
        mapView.removeAnnotations(annotations)
        
        //Add a map pin
        let pin = MKPointAnnotation()
        pin.coordinate = coordinates
        mapView.addAnnotation(pin)
        mapView.setRegion(
            MKCoordinateRegion(
                center: coordinates,
                span: MKCoordinateSpan(
                    latitudeDelta: 0.2,
                    longitudeDelta: 0.2
                )),
            animated: true
        )
        print("Треба передати координати для нового запиту \(coordinates)")
        searchVC.searchBar.text = ChangeLocationViewControllerViewModel.locationName
        
//        GooglePlacesManager.coordinatesFourQuery = viewModel.changeLocation(coordinates: coordinates)
        
        GooglePlacesManager.shared.newCoordinate = coordinates
        
//        setReverseGeocoding(url: reverseGeocodingUrl)
        
    }
    
    
    
    
}















