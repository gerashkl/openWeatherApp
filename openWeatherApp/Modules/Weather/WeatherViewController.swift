//
//  ViewController.swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 02.10.2022.
//

import UIKit
import Alamofire
import SDWebImage
import MapKit



class WeatherViewController: UIViewController, CLLocationManagerDelegate{
    @IBOutlet weak var weatherTemperatureLabel: UILabel!
    @IBOutlet weak var weatherHumidityLabel: UILabel!
    @IBOutlet weak var weatherWindSpeedLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var wheatherTableView: UITableView!
    @IBOutlet weak var weatherDateLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    
    var dailyData:[Daily] = []
    var currentData:Current?
    
    var manager:CLLocationManager?
    var myLocations: [CLLocation] = []

    
    var viewModel = WeatherViewControllerViewModel()
    let viewModel2 = ChangeLocationViewControllerViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setapInterfase()

 



       
    
      
////
        }
    //MARK: -
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        loadWeatherData()
        setReverseGeocoding()
        locationNameLabel.text = WeatherViewControllerViewModel.title

        
    }
    
    
        
    @IBAction func ChangeLocation(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let ChangeLocationViewController = storyboard.instantiateViewController(withIdentifier:String(describing: ChangeLocationViewController.self)) as? ChangeLocationViewController{
//            detalisViewController.mediaDetalis = mainMediaDataList[indexPath.row]
            navigationController?.pushViewController(ChangeLocationViewController, animated: true)


        }


    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        manager = CLLocationManager()
        manager?.delegate = self
        manager?.desiredAccuracy = kCLLocationAccuracyKilometer
        manager?.requestWhenInUseAuthorization()
        manager?.startUpdatingLocation()

        
       
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let firstLocation = locations.first?.coordinate else{
            return
        }

        print("333")
        print(firstLocation)
//        GooglePlacesManager.coordinatesFourQuery = viewModel2.changeLocation(coordinates: firstLocation)
        GooglePlacesManager.shared.newCoordinate = firstLocation
        loadWeatherData()
        setReverseGeocoding()
    }
    
}

    

//MARK: - TableView

extension WeatherViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dailyData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell =
            wheatherTableView.dequeueReusableCell(withIdentifier: String(describing: WeatherDayTableViewCell.self)) as? WeatherDayTableViewCell {
//            print("Заповнюю комірки даними")
//            print(indexPath.row)
            cell.configure(with: dailyData[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        setDaylyWeather (dailyData: dailyData[indexPath.row])
//        if indexPath.row == 0{
//            guard let currentData=currentData else{
//                setDaylyWeather (dailyData: dailyData[0])
//                return
//            }
//            setCurrentWeather(currentData: currentData)
//        }else{
//            setDaylyWeather (dailyData: dailyData[indexPath.row])
//        }
//
        
    }
    
}




    








