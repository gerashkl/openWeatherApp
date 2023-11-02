
import Foundation
import Alamofire
import MapKit

extension WeatherViewController {
    //    static var allWeatherData: WeatherData?
    
    func setReverseGeocoding (){
        //    http://api.openweathermap.org/geo/1.0/reverse?lat=51.5098&lon=-0.1180&limit=5&appid={API key}
        //
        //        reverseGeocodingUrl =
        //
        viewModel.urlType = .geoReverse
        let url =  viewModel.bildUrl(urlType: viewModel.urlType)
        WeatherViewControllerViewModel.NetworkManager().reverseGeocoding(url:url){ locationNameValue in
            guard let locationName = locationNameValue.first?.name else {return}
            //            WeatherViewControllerViewModel.title = locationName
            print(url)
            self.locationNameLabel.text = locationName
        }
        
    }
    
    
    func loadWeatherData(){
        
        viewModel.urlType = .onecall
        let url =  viewModel.bildUrl(urlType: viewModel.urlType)
        
        
        //        WeatherViewControllerViewModel.NetworkManager().getWeatherData(url: url){WeatherData in
        //            if WeatherData.count == 0 {
        //                print("ERRROR")
        //                //Нормально обробити помилку
        //            }else{
        //                self.dailyData=WeatherData
        //                self.setDaylyWeather(dailyData:self.dailyData.first!)
        //                self.currentData
        //                self.wheatherTableView.reloadData()
        //            }
        
        WeatherViewControllerViewModel.NetworkManager().getWeatherData(url: url){WeatherData in
            
            self.dailyData=WeatherData.daily
            self.setCurrentWeather(currentData: WeatherData.current)
            
            self.currentData=WeatherData.current
            self.wheatherTableView.reloadData()
            
        }
        
        
        //        AF.request(url).responseDecodable(of: Welcome.self, queue: .main, decoder: JSONDecoder()){response in
        //            switch response.result {
        //            case .success(let weatherData): let model = weatherData.daily
        //                self.dailyData=response.value?.daily as! [Daily]
        //                //completion
        //            case .failure(let error):
        //                print("")
        //                    //зробити норм
        //
        //            }
        
        
        
        
    }
    
    
    
    
    
    
    func setDaylyWeather(dailyData: Daily ){
        weatherTemperatureLabel.text = "\(dailyData.temp.max )/\(dailyData.temp.min )"
        weatherHumidityLabel.text = "\(dailyData.humidity)"
        weatherWindSpeedLabel.text = "\(dailyData.windSpeed)"
        guard let iconCode = dailyData.weather.first?.icon else{return}
        let imgUrl =  viewModel.getIconUrl(iconCode: iconCode)
        self.weatherImageView.sd_setImage(with: imgUrl)
        weatherDateLabel.text = viewModel.dateFormater(timeIntervalSince1970: dailyData.dt, showСlock: false )
    }
    func setCurrentWeather(currentData: Current ){
        weatherTemperatureLabel.text = "\(currentData.temp )"
        weatherHumidityLabel.text = "\(currentData.humidity)"
        weatherWindSpeedLabel.text = "\(currentData.windSpeed)"
        weatherDateLabel.text = viewModel.dateFormater(timeIntervalSince1970: currentData.dt, showСlock: true )
        guard let iconCode = currentData.weather.first?.icon else{return}
        let imgUrl = viewModel.getIconUrl(iconCode: iconCode)
        self.weatherImageView.sd_setImage(with: imgUrl)
        
        
    }
    
    func setapInterfase(){
        
        let stringCellIdentifire = String(describing: WeatherDayTableViewCell.self)
        let cellNib = UINib(nibName: stringCellIdentifire, bundle: nil)
        wheatherTableView.register(cellNib, forCellReuseIdentifier: stringCellIdentifire)
        
    }
    
}



struct WeatherViewControllerViewModel{
    
    
    
    static var title = Const.defaultTitle
//    var coordinates = GooglePlacesManager.coordinatesFourQuery
    
    
    var urlType: Const.Request.urlType = .geoReverse
    
    func bildUrl(urlType: Const.Request.urlType )->String{
        
        guard let newCoordinate = GooglePlacesManager.shared.newCoordinate else {
            return ""
        }

        let coordinates = "lat=\(newCoordinate.latitude)&lon=\(newCoordinate.longitude)"
//        let newCoordinate = GooglePlacesManager.shared.newCoordinate
        
        switch urlType {
            case .onecall:
                return Const.Request.baseUrl.onecall.rawValue +
                coordinates +
                Const.Request.units +
                Const.Request.exclude +
                Const.Request.apiKey
            case .geoReverse:
                let url = Const.Request.baseUrl.geoReverse.rawValue +
                coordinates +
                Const.Request.reversLimit +
                Const.Request.apiKey
            return url // можн без змінної
        }
        
    }
    
    func getIconUrl (iconCode: String)->URL{
        let imgUrlString = "http://openweathermap.org/img/wn/\(iconCode)@2x.png"
        let imgUrl = URL(string: imgUrlString)!
        return imgUrl
    }
    
    func dateFormater(timeIntervalSince1970: Int, showСlock:Bool) ->String {
        let weatherDate = NSDate(timeIntervalSince1970: TimeInterval(timeIntervalSince1970 ) )
        let utcDateFormatter = DateFormatter()
        utcDateFormatter.dateStyle = .short
        if showСlock == true {
            utcDateFormatter.timeStyle = .short
        }
        let shortDate = weatherDate
        utcDateFormatter.string(from: shortDate as Date)
        //
        return  "\(utcDateFormatter.string(from: shortDate as Date))"
        
    }
    
    struct NetworkManager {

        
        //        Const.Request.baseUrl.geoReverse
        //        var urlType = Const.Request.baseUrl.geoReverse
        //        Const.Request.urlType = .geoReverse
        
        //https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&units={units}&exclude=hourly,daily&appid={API key}
        
    
        //        func getWeatherData(url: String, completition: @escaping([Daily])->()){
        //            AF.request(url, method: .get).responseDecodable(of: Welcome.self) { WeatherDataResponse in
        //                let allData = WeatherDataResponse.value
        //                print("3")
        //                completition(allData?.daily ?? [] )
        //            }
        //        }
        
        //       private let welcom:Welcome
        
        
        func getWeatherData(url: String, completition: @escaping(Welcome)->()){
            AF.request(url, method: .get).responseDecodable(of: Welcome.self) { WeatherDataResponse in
                
                switch WeatherDataResponse.result {
                case .success:
                    
                    guard let allData = WeatherDataResponse.value else{
                        return
                    }
                    completition(allData )
                case .failure:
                    print(WeatherDataResponse.error)
                    //зробити норм
                    
                    
                    
                    //                    guard let allData = WeatherDataResponse.value else{
                    //                    return
                                    }
                    print("3")
                    
                }
            }
            
            func reverseGeocoding (url: String, completition: @escaping(ReverseGeocoding)->()){
                AF.request(url, method: .get).responseDecodable(of: ReverseGeocoding.self) { reverseGeocodingResponse in
                    guard let locationNameValue = reverseGeocodingResponse.value else{
                        return
                    }
                    print("3")
                    completition( locationNameValue )
                }
            }
            
            
            //  places google      AIzaSyB39iawnienIxDUd7LLJviRr6oaF19bCys
                
            
            //https://openweathermap.org/img/wn/10d@4x.png
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    //  googleMapKey      AIzaSyDTpPMvrTFFyw7lomEq_SRKaD7FpnqGOv8
    
    //        var url = ""
    //        let baseUrl = "https://api.openweathermap.org/data/3.0/onecall?"
    //        let coordinates = "lat=48.55&lon=24.42"
    //        let units = "&units=metric"
    //        let exclude="&exclude=minutely"
    //        let apiKey="&appid=29d2f12e9ac61c0dbb4d424457df17dc"
    //        url = baseUrl+coordinates+units+exclude+apiKey
    //        print(url)
    //        print("1")
    //        print(dailyData)
    //        loadWeatherData(url: url)
    //        print(dailyData)
