
import Foundation

struct Const{
    
    static let defaultTitle = "Location"
    
    struct Request{
        
        enum urlType{
            case onecall
            case geoReverse
        }
        
        enum baseUrl:String {
            case onecall = "https://api.openweathermap.org/data/3.0/onecall?"
            case geoReverse = "http://api.openweathermap.org/geo/1.0/reverse?"
        }
        
        
        static let units = "&units=metric"
        static let exclude="&exclude=minutely"
        static let apiKey="&appid=29d2f12e9ac61c0dbb4d424457df17dc"
        static let reversLimit = "&limit=1"
        
        
        
        
        
    }
    
    
    
}
