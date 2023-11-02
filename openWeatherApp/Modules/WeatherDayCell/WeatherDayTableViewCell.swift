//
//  WeatherDayTableViewCell.swift
//  openWeatherApp
//
//  Created by Illia Marchenko on 03.10.2022.
//

import UIKit
import SDWebImage

class WeatherDayTableViewCell: UITableViewCell {
    @IBOutlet weak var dailyTemperatureCellLabel: UILabel!
    @IBOutlet weak var weatherDayCellImageView: UIImageView!
    @IBOutlet weak var dailyDateCellLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func configure (with dailyData: Daily){
        self.dailyTemperatureCellLabel.text="\(dailyData.temp.max )/\(dailyData.temp.min )"
        
        guard let iconCode = dailyData.weather.first?.icon else{return}
//        let imgUrlString = "http://openweathermap.org/img/wn/10d@2x.png"
        let imgUrlString = "http://openweathermap.org/img/wn/\(iconCode)@2x.png"
        let imgUrl = URL(string: imgUrlString)

        self.weatherDayCellImageView.sd_setImage(with: imgUrl)
        let weatherDate = NSDate(timeIntervalSince1970: TimeInterval(dailyData.dt ) )
        dailyDateCellLabel.text = "\(weatherDate)"
        
        
        let dailyDate = NSDate(timeIntervalSince1970: TimeInterval(dailyData.dt ) )
        let utcDateFormatter = DateFormatter()
        utcDateFormatter.dateStyle = .short
        
        let shortDate = utcDateFormatter.string(from: dailyDate as Date)
        dailyDateCellLabel.text = "\(shortDate)"
//        guard
//                let url = URL(string: "http://openweathermap.org/img/wn/10d.png")
//                else {
//                    return
//            }
//        weatherDayCellImageView.sd_setImage(with: url) { (image, error, cacheTRype, url) in
//                print(error?.localizedDescription ?? "no error loading image")
//            }
        
       
    }
    
}
