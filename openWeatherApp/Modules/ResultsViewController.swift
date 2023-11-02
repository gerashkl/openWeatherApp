//
//  ResultsViewController.swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 03.10.2022.
//

import UIKit
import CoreLocation

protocol ResultsViewControllerDelegate:AnyObject{
    func didTapPlace(with coordinates:CLLocationCoordinate2D )
}

class ResultsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    weak var delegate: ResultsViewControllerDelegate?
  
 
    private let tableView:UITableView = {
       let table = UITableView()
        table.register(UITableViewCell.self,
                       forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var places: [Place] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
//        view.backgroundColor = .systemBlue
        view.backgroundColor = .clear

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        title = "MySearchResult"
        tableView.frame = view.bounds


    }
    
    public func update(with places:[Place]){
        self.tableView.isHidden = false
        self.places = places
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = places[indexPath.row].name
//        print(places[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        tableView.isHidden = true
        
        let place = places[indexPath.row]
        GooglePlacesManager.shared.resolveLocation(for: place) { [weak self] result in
            switch result {
            case .success(let coordinate):
//                ChangeLocationViewControllerViewModel.locationName = place.name
                DispatchQueue.main.async {
                    ChangeLocationViewControllerViewModel.locationName = place.name
                    
                    self?.delegate?.didTapPlace(with: coordinate)
//
//                    WeatherViewControllerViewModel.plase = place
//                    WeatherViewControllerViewModel.coordinates = coordinate
                    WeatherViewControllerViewModel.title = place.name
                    
//                    ChangeLocationViewControllerViewModel.changeLocationTitle(place)
                    
                    
                }
            case .failure(let error):
                print(error)
            }
        }
        //Функція, завантажує погоду для нового міста?
        //Функція, що завантажує Назву для нового міста?
    }
    

    
}





//
//import UIKit
//import MapKit
//
// class ResultsViewController: UIViewController {
//
//    let mapView = MKMapView()
////    let searchVC = UISearchController(searchResultsController: ResultsViewController())
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        view.backgroundColor = .systemBlue
////        view.addSubview(mapView)
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        title = "MyMaps"
////        mapView.frame = view.bounds
//        mapView.frame = CGRect(x: 0, y: view.safeAreaInsets.top,
//                               width: view.frame.size.width,
//                               height: view.frame.size.height-view.safeAreaInsets.top)
//
//
//    }
//
//
//}
