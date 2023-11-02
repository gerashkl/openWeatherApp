////
import Foundation
let json =
"""
{"lat":48.55,"lon":24.42,"timezone":"Europe/Kiev","timezone_offset":10800,"current":{"dt":1664815686,"sunrise":1664771043,"sunset":1664812716,"temp":6.05,"feels_like":3.13,"pressure":1013,"humidity":90,"dew_point":4.54,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":4.04,"wind_deg":286,"wind_gust":12.83,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]},"hourly":[{"dt":1664812800,"temp":6.03,"feels_like":3.09,"pressure":1013,"humidity":91,"dew_point":4.67,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":4.07,"wind_deg":269,"wind_gust":12.55,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.91,"rain":{"1h":0.2}},{"dt":1664816400,"temp":6.05,"feels_like":3.13,"pressure":1013,"humidity":90,"dew_point":4.54,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":4.04,"wind_deg":286,"wind_gust":12.83,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.71},{"dt":1664820000,"temp":5.98,"feels_like":3.89,"pressure":1013,"humidity":91,"dew_point":4.62,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.72,"wind_deg":292,"wind_gust":7.02,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.71},{"dt":1664823600,"temp":5.67,"feels_like":3.56,"pressure":1013,"humidity":92,"dew_point":4.47,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.67,"wind_deg":241,"wind_gust":5.7,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.78},{"dt":1664827200,"temp":5.38,"feels_like":3.07,"pressure":1014,"humidity":92,"dew_point":4.19,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.86,"wind_deg":246,"wind_gust":7.24,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.75},{"dt":1664830800,"temp":5.08,"feels_like":2.67,"pressure":1014,"humidity":92,"dew_point":3.89,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.91,"wind_deg":255,"wind_gust":8.34,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.76},{"dt":1664834400,"temp":4.73,"feels_like":2.27,"pressure":1014,"humidity":92,"dew_point":3.52,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.88,"wind_deg":258,"wind_gust":7.45,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.86},{"dt":1664838000,"temp":4.54,"feels_like":2.14,"pressure":1015,"humidity":93,"dew_point":3.47,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.76,"wind_deg":254,"wind_gust":6.43,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.76,"rain":{"1h":0.11}},{"dt":1664841600,"temp":5,"feels_like":2.62,"pressure":1015,"humidity":91,"dew_point":3.52,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":2.85,"wind_deg":271,"wind_gust":7.32,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.73,"rain":{"1h":0.3}},{"dt":1664845200,"temp":4.62,"feels_like":2.57,"pressure":1015,"humidity":94,"dew_point":3.69,"uvi":0,"clouds":100,"visibility":7049,"wind_speed":2.37,"wind_deg":271,"wind_gust":5.63,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":0.67,"rain":{"1h":1.3}},{"dt":1664848800,"temp":4.29,"feels_like":2.24,"pressure":1016,"humidity":96,"dew_point":3.63,"uvi":0,"clouds":100,"visibility":7851,"wind_speed":2.3,"wind_deg":243,"wind_gust":4.64,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10n"}],"pop":0.76,"rain":{"1h":1.6}},{"dt":1664852400,"temp":4.39,"feels_like":2.45,"pressure":1016,"humidity":95,"dew_point":3.61,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.2,"wind_deg":231,"wind_gust":4.09,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10n"}],"pop":0.76,"rain":{"1h":0.16}},{"dt":1664856000,"temp":4.98,"feels_like":3.46,"pressure":1015,"humidity":94,"dew_point":3.99,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":1.89,"wind_deg":256,"wind_gust":4.15,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.72},{"dt":1664859600,"temp":5.19,"feels_like":3.54,"pressure":1016,"humidity":93,"dew_point":4.15,"uvi":0,"clouds":100,"visibility":10000,"wind_speed":2.05,"wind_deg":251,"wind_gust":4.01,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.72},{"dt":1664863200,"temp":5.92,"feels_like":4.59,"pressure":1016,"humidity":91,"dew_point":4.41,"uvi":0.16,"clouds":100,"visibility":10000,"wind_speed":1.85,"wind_deg":257,"wind_gust":4.79,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.72},{"dt":1664866800,"temp":6.4,"feels_like":4.85,"pressure":1017,"humidity":88,"dew_point":4.46,"uvi":0.46,"clouds":100,"visibility":10000,"wind_speed":2.16,"wind_deg":257,"wind_gust":5.02,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.42},{"dt":1664870400,"temp":7.25,"feels_like":5.6,"pressure":1017,"humidity":80,"dew_point":3.81,"uvi":0.91,"clouds":100,"visibility":10000,"wind_speed":2.46,"wind_deg":271,"wind_gust":5.75,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.3},{"dt":1664874000,"temp":7.42,"feels_like":5.56,"pressure":1018,"humidity":79,"dew_point":3.87,"uvi":1.34,"clouds":100,"visibility":10000,"wind_speed":2.78,"wind_deg":272,"wind_gust":6.25,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.3},{"dt":1664877600,"temp":7.96,"feels_like":5.98,"pressure":1018,"humidity":75,"dew_point":3.63,"uvi":1.76,"clouds":100,"visibility":10000,"wind_speed":3.13,"wind_deg":269,"wind_gust":6.6,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.28},{"dt":1664881200,"temp":9.06,"feels_like":7.13,"pressure":1018,"humidity":67,"dew_point":3,"uvi":1.73,"clouds":100,"visibility":10000,"wind_speed":3.44,"wind_deg":271,"wind_gust":6.66,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.29},{"dt":1664884800,"temp":9.59,"feels_like":7.83,"pressure":1018,"humidity":63,"dew_point":2.7,"uvi":1.4,"clouds":98,"visibility":10000,"wind_speed":3.33,"wind_deg":279,"wind_gust":6.53,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.29},{"dt":1664888400,"temp":9.42,"feels_like":7.83,"pressure":1019,"humidity":63,"dew_point":2.61,"uvi":0.85,"clouds":100,"visibility":10000,"wind_speed":2.97,"wind_deg":280,"wind_gust":6.2,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.29},{"dt":1664892000,"temp":9.37,"feels_like":7.94,"pressure":1019,"humidity":64,"dew_point":2.75,"uvi":0.42,"clouds":99,"visibility":10000,"wind_speed":2.71,"wind_deg":288,"wind_gust":6.16,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.25},{"dt":1664895600,"temp":8.32,"feels_like":7.11,"pressure":1020,"humidity":71,"dew_point":3.35,"uvi":0.13,"clouds":98,"visibility":10000,"wind_speed":2.14,"wind_deg":296,"wind_gust":4.07,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0.13},{"dt":1664899200,"temp":7.23,"feels_like":6.21,"pressure":1021,"humidity":78,"dew_point":3.49,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":1.75,"wind_deg":272,"wind_gust":2.9,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.1},{"dt":1664902800,"temp":6.73,"feels_like":5.76,"pressure":1022,"humidity":82,"dew_point":3.65,"uvi":0,"clouds":99,"visibility":10000,"wind_speed":1.64,"wind_deg":267,"wind_gust":2.85,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.1},{"dt":1664906400,"temp":6.39,"feels_like":5.32,"pressure":1023,"humidity":84,"dew_point":3.88,"uvi":0,"clouds":98,"visibility":10000,"wind_speed":1.68,"wind_deg":260,"wind_gust":2.81,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"pop":0.1},{"dt":1664910000,"temp":5.32,"feels_like":3.87,"pressure":1024,"humidity":88,"dew_point":3.34,"uvi":0,"clouds":66,"visibility":10000,"wind_speed":1.88,"wind_deg":253,"wind_gust":2.85,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664913600,"temp":4.64,"feels_like":2.84,"pressure":1024,"humidity":90,"dew_point":2.96,"uvi":0,"clouds":54,"visibility":10000,"wind_speed":2.11,"wind_deg":246,"wind_gust":2.95,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664917200,"temp":5.62,"feels_like":4.1,"pressure":1025,"humidity":86,"dew_point":3.33,"uvi":0,"clouds":67,"visibility":10000,"wind_speed":1.99,"wind_deg":247,"wind_gust":3.05,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664920800,"temp":5.42,"feels_like":3.83,"pressure":1025,"humidity":86,"dew_point":3.11,"uvi":0,"clouds":66,"visibility":10000,"wind_speed":2.03,"wind_deg":258,"wind_gust":3,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664924400,"temp":5.12,"feels_like":3.42,"pressure":1026,"humidity":84,"dew_point":2.48,"uvi":0,"clouds":62,"visibility":10000,"wind_speed":2.09,"wind_deg":256,"wind_gust":2.83,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664928000,"temp":5.07,"feels_like":3.46,"pressure":1026,"humidity":83,"dew_point":2.38,"uvi":0,"clouds":62,"visibility":10000,"wind_speed":1.99,"wind_deg":239,"wind_gust":2.36,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04n"}],"pop":0},{"dt":1664931600,"temp":4.37,"feels_like":2.6,"pressure":1026,"humidity":86,"dew_point":2.15,"uvi":0,"clouds":46,"visibility":10000,"wind_speed":2.03,"wind_deg":238,"wind_gust":2.29,"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"pop":0},{"dt":1664935200,"temp":3.39,"feels_like":1.19,"pressure":1027,"humidity":89,"dew_point":1.66,"uvi":0,"clouds":26,"visibility":10000,"wind_speed":2.29,"wind_deg":233,"wind_gust":2.12,"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03n"}],"pop":0},{"dt":1664938800,"temp":3.1,"feels_like":0.58,"pressure":1027,"humidity":90,"dew_point":1.55,"uvi":0,"clouds":21,"visibility":10000,"wind_speed":2.58,"wind_deg":223,"wind_gust":2.63,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"pop":0},{"dt":1664942400,"temp":2.89,"feels_like":0.35,"pressure":1027,"humidity":92,"dew_point":1.54,"uvi":0,"clouds":19,"visibility":10000,"wind_speed":2.56,"wind_deg":223,"wind_gust":2.67,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02n"}],"pop":0},{"dt":1664946000,"temp":3.13,"feels_like":0.54,"pressure":1028,"humidity":92,"dew_point":1.84,"uvi":0,"clouds":19,"visibility":10000,"wind_speed":2.66,"wind_deg":220,"wind_gust":3.06,"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"pop":0},{"dt":1664949600,"temp":5.44,"feels_like":3.45,"pressure":1027,"humidity":86,"dew_point":3.17,"uvi":0.27,"clouds":31,"visibility":10000,"wind_speed":2.47,"wind_deg":217,"wind_gust":3.52,"weather":[{"id":802,"main":"Clouds","description":"scattered clouds","icon":"03d"}],"pop":0},{"dt":1664953200,"temp":7.68,"feels_like":6.14,"pressure":1026,"humidity":77,"dew_point":3.81,"uvi":0.75,"clouds":100,"visibility":10000,"wind_speed":2.42,"wind_deg":220,"wind_gust":3.39,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664956800,"temp":9.41,"feels_like":8.46,"pressure":1027,"humidity":70,"dew_point":4.01,"uvi":1.47,"clouds":100,"visibility":10000,"wind_speed":2.06,"wind_deg":225,"wind_gust":2.97,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664960400,"temp":11.06,"feels_like":9.84,"pressure":1026,"humidity":62,"dew_point":3.92,"uvi":2.18,"clouds":100,"visibility":10000,"wind_speed":2.22,"wind_deg":218,"wind_gust":3.22,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664964000,"temp":12.18,"feels_like":10.94,"pressure":1025,"humidity":57,"dew_point":3.8,"uvi":2.71,"clouds":100,"visibility":10000,"wind_speed":2.76,"wind_deg":224,"wind_gust":4.31,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664967600,"temp":12.9,"feels_like":11.66,"pressure":1025,"humidity":54,"dew_point":3.63,"uvi":2.67,"clouds":100,"visibility":10000,"wind_speed":2.06,"wind_deg":234,"wind_gust":3.69,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664971200,"temp":13.55,"feels_like":12.29,"pressure":1025,"humidity":51,"dew_point":3.63,"uvi":2.15,"clouds":100,"visibility":10000,"wind_speed":2.04,"wind_deg":245,"wind_gust":3.79,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"pop":0},{"dt":1664974800,"temp":13.54,"feels_like":12.31,"pressure":1025,"humidity":52,"dew_point":3.66,"uvi":1.43,"clouds":63,"visibility":10000,"wind_speed":2.27,"wind_deg":227,"wind_gust":3.62,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"pop":0},{"dt":1664978400,"temp":12.78,"feels_like":11.6,"pressure":1025,"humidity":57,"dew_point":4.35,"uvi":0.69,"clouds":54,"visibility":10000,"wind_speed":2.34,"wind_deg":223,"wind_gust":3.69,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"pop":0},{"dt":1664982000,"temp":10.49,"feels_like":9.4,"pressure":1025,"humidity":69,"dew_point":4.85,"uvi":0.21,"clouds":62,"visibility":10000,"wind_speed":2.57,"wind_deg":215,"wind_gust":3.62,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"pop":0}],"daily":[{"dt":1664791200,"sunrise":1664771043,"sunset":1664812716,"moonrise":1664802780,"moonset":1664830380,"moon_phase":0.25,"temp":{"day":7.65,"min":5.38,"max":8.51,"night":5.38,"eve":6.03,"morn":6.91},"feels_like":{"day":4.64,"night":3.07,"eve":3.09,"morn":4.57},"pressure":1011,"humidity":78,"dew_point":3.86,"wind_speed":5.25,"wind_deg":279,"wind_gust":13.63,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":80,"pop":1,"rain":3.78,"uvi":0.71},{"dt":1664877600,"sunrise":1664857529,"sunset":1664898991,"moonrise":1664891880,"moonset":0,"moon_phase":0.3,"temp":{"day":7.96,"min":4.29,"max":9.59,"night":4.64,"eve":7.23,"morn":4.98},"feels_like":{"day":5.98,"night":2.84,"eve":6.21,"morn":3.46},"pressure":1018,"humidity":75,"dew_point":3.63,"wind_speed":3.44,"wind_deg":271,"wind_gust":8.34,"weather":[{"id":501,"main":"Rain","description":"moderate rain","icon":"10d"}],"clouds":100,"pop":0.86,"rain":3.47,"uvi":1.76},{"dt":1664964000,"sunrise":1664944016,"sunset":1664985267,"moonrise":1664980320,"moonset":1664921580,"moon_phase":0.34,"temp":{"day":12.18,"min":2.89,"max":13.55,"night":5.43,"eve":7.82,"morn":2.89},"feels_like":{"day":10.94,"night":2.71,"eve":5.93,"morn":0.35},"pressure":1025,"humidity":57,"dew_point":3.8,"wind_speed":3.46,"wind_deg":220,"wind_gust":4.5,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":100,"pop":0,"uvi":2.71},{"dt":1665050400,"sunrise":1665030503,"sunset":1665071543,"moonrise":1665068220,"moonset":1665012960,"moon_phase":0.37,"temp":{"day":16.35,"min":5.36,"max":17.74,"night":9.98,"eve":10.82,"morn":5.74},"feels_like":{"day":15.32,"night":9.74,"eve":10.02,"morn":3.28},"pressure":1026,"humidity":49,"dew_point":5.43,"wind_speed":3.42,"wind_deg":224,"wind_gust":4.46,"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],"clouds":99,"pop":0,"uvi":2.5},{"dt":1665136800,"sunrise":1665116990,"sunset":1665157820,"moonrise":1665155820,"moonset":1665104400,"moon_phase":0.41,"temp":{"day":14.77,"min":6.71,"max":15.81,"night":8.25,"eve":9.43,"morn":6.71},"feels_like":{"day":13.92,"night":7.11,"eve":9.43,"morn":6.71},"pressure":1029,"humidity":62,"dew_point":7.5,"wind_speed":2.2,"wind_deg":83,"wind_gust":3.67,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":22,"pop":0.2,"rain":0.11,"uvi":2.61},{"dt":1665223200,"sunrise":1665203477,"sunset":1665244097,"moonrise":1665243240,"moonset":1665195660,"moon_phase":0.45,"temp":{"day":16.77,"min":7.17,"max":17.98,"night":9.4,"eve":13.31,"morn":7.17},"feels_like":{"day":15.81,"night":9.04,"eve":12.68,"morn":5.56},"pressure":1023,"humidity":50,"dew_point":6.27,"wind_speed":2.39,"wind_deg":224,"wind_gust":2.46,"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":3,"pop":0,"uvi":3},{"dt":1665309600,"sunrise":1665289965,"sunset":1665330375,"moonrise":1665330660,"moonset":1665286740,"moon_phase":0.48,"temp":{"day":16.25,"min":7.93,"max":18.53,"night":9.99,"eve":13.79,"morn":7.93},"feels_like":{"day":15.42,"night":9.23,"eve":13.18,"morn":7.3},"pressure":1023,"humidity":57,"dew_point":7.81,"wind_speed":1.94,"wind_deg":216,"wind_gust":1.92,"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],"clouds":6,"pop":0,"uvi":3},{"dt":1665396000,"sunrise":1665376453,"sunset":1665416654,"moonrise":1665418080,"moonset":1665377760,"moon_phase":0.5,"temp":{"day":17.67,"min":8.51,"max":19.55,"night":10.59,"eve":14.68,"morn":8.51},"feels_like":{"day":16.62,"night":9.77,"eve":13.93,"morn":7.02},"pressure":1018,"humidity":43,"dew_point":4.92,"wind_speed":2.66,"wind_deg":225,"wind_gust":2.84,"weather":[{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}],"clouds":82,"pop":0,"uvi":3}]}

"""

//// MARK: - WeatherData
//struct WeatherData: Codable {
//    let lat, lon: Double
//    let timezone: String
//    let timezoneOffset: Int
//    let current: Current
//    let hourly: [Current]
//    let daily: [Daily]
//
//    enum CodingKeys: String, CodingKey {
//        case lat, lon, timezone
//        case timezoneOffset = "timezone_offset"
//        case current, hourly, daily
//    }
//}
//
//// MARK: - Current
//struct Current: Codable {
//    let dt: Int
//    let sunrise, sunset: Int?
//    let temp, feelsLike: Double
//    let pressure, humidity: Int
//    let dewPoint, uvi: Double
//    let clouds, visibility: Int
//    let windSpeed: Double
//    let windDeg: Int
//    let weather: [Weather]
//    let windGust: Double?
//    let pop: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case dt, sunrise, sunset, temp
//        case feelsLike = "feels_like"
//        case pressure, humidity
//        case dewPoint = "dew_point"
//        case uvi, clouds, visibility
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case weather
//        case windGust = "wind_gust"
//        case pop
//    }
//}
//
//// MARK: - Weather
//struct Weather: Codable {
//    let id: Int
//    let main: Main
//    let weatherDescription: Description
//    let icon: Icon
//
//    enum CodingKeys: String, CodingKey {
//        case id, main
//        case weatherDescription = "description"
//        case icon
//    }
//}
//
//enum Icon: String, Codable {
//    case the01D = "01d"
//    case the01N = "01n"
//    case the02D = "02d"
//    case the02N = "02n"
//    case the03D = "03d"
//    case the03N = "03n"
//    case the04D = "04d"
//    case the04N = "04n"
//    case the05D = "05d"
//    case the05N = "05n"
//    case the06D = "06d"
//    case the06N = "06n"
//    case the07D = "07d"
//    case the07N = "07n"
//    case the08D = "08d"
//    case the08N = "08n"
//    case the09D = "09d"
//    case the09N = "09n"
//    case the10D = "10d"
//    case the10N = "10n"
//    case the11D = "11d"
//    case the11N = "11n"
//    case the13D = "13d"
//    case the13N = "13n"
//    case the50D = "50d"
//    case the50N = "50n"
//}
//
//enum Main: String, Codable {
//    case clear = "Clear"
//    case clouds = "Clouds"
//}
//
//enum Description: String, Codable {
//    case brokenClouds = "broken clouds"
//    case clearSky = "clear sky"
//    case fewClouds = "few clouds"
//    case overcastClouds = "overcast clouds"
//    case scatteredClouds = "scattered clouds"
//}
//
//// MARK: - Daily
//struct Daily: Codable {
//    let dt, sunrise, sunset, moonrise: Int
//    let moonset: Int
//    let moonPhase: Double
//    let temp: Temp
//    let feelsLike: FeelsLike
//    let pressure, humidity: Int
//    let dewPoint, windSpeed: Double
//    let windDeg: Int
//    let windGust: Double
//    let weather: [Weather]
//    let clouds, pop: Int
//    let uvi: Double
//
//    enum CodingKeys: String, CodingKey {
//        case dt, sunrise, sunset, moonrise, moonset
//        case moonPhase = "moon_phase"
//        case temp
//        case feelsLike = "feels_like"
//        case pressure, humidity
//        case dewPoint = "dew_point"
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case windGust = "wind_gust"
//        case weather, clouds, pop, uvi
//    }
//}
//
//// MARK: - FeelsLike
//struct FeelsLike: Codable {
//    let day, night, eve, morn: Double
//}
//
//// MARK: - Temp
//struct Temp: Codable {
//    let day, min, max, night: Double
//    let eve, morn: Double
//}

//
//import Foundation
//
//// MARK: - WeatherData
//struct WeatherData: Codable {
//    let lat, lon: Double
//    let timezone: String
//    let timezoneOffset: Int
////    let current: Current
////    let hourly: [Current]
//    let daily: [Daily?]
//
//    enum CodingKeys: String, CodingKey {
//        case lat, lon, timezone
//        case timezoneOffset = "timezone_offset"
////        case current, hourly, daily
//        case daily
//    }
//}
//
//// MARK: - Current
//struct Current: Codable {
//    let dt: Int?
//    let sunrise, sunset: Int?
//    let temp, feelsLike: Double
//    let pressure, humidity: Int
//    let dewPoint, uvi: Double
//    let clouds, visibility: Int
//    let windSpeed: Double
//    let windDeg: Int
//    let weather: [Weather?]
//    let windGust: Double?
//    let pop: Int?
//
//    enum CodingKeys: String, CodingKey {
//        case dt, sunrise, sunset, temp
//        case feelsLike = "feels_like"
//        case pressure, humidity
//        case dewPoint = "dew_point"
//        case uvi, clouds, visibility
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case weather
//        case windGust = "wind_gust"
//        case pop
//    }
//}
//
//// MARK: - Weather
//struct Weather: Codable {
//    let id: Int?
//    let main: Main?
//    let weatherDescription: Description?
//    let icon: Icon?
//
//    enum CodingKeys: String, CodingKey {
//        case id, main
//        case weatherDescription = "description"
//        case icon
//    }
//}
//
//enum Icon: String, Codable {
//    case the01D = "01d"
//    case the01N = "01n"
//    case the02D = "02d"
//    case the02N = "02n"
//    case the03D = "03d"
//    case the03N = "03n"
//    case the04D = "04d"
//    case the04N = "04n"
//    case the05D = "05d"
//    case the05N = "05n"
//    case the06D = "06d"
//    case the06N = "06n"
//    case the07D = "07d"
//    case the07N = "07n"
//    case the08D = "08d"
//    case the08N = "08n"
//    case the09D = "09d"
//    case the09N = "09n"
//    case the10D = "10d"
//    case the10N = "10n"
//    case the11D = "11d"
//    case the11N = "11n"
//    case the13D = "13d"
//    case the13N = "13n"
//    case the50D = "50d"
//    case the50N = "50n"
//}
//
//enum Main: String, Codable {
//    case clear = "Clear"
//    case clouds = "Clouds"
//}
//
//enum Description: String, Codable {
//    case brokenClouds = "broken clouds"
//    case clearSky = "clear sky"
//    case fewClouds = "few clouds"
//    case overcastClouds = "overcast clouds"
//    case scatteredClouds = "scattered clouds"
//}
//
//// MARK: - Daily
//struct Daily: Codable {
//    let dt, sunrise, sunset, moonrise: Int
//    let moonset: Int
//    let moonPhase: Double
//    let temp: Temp?
//    let feelsLike: FeelsLike?
//    let pressure, humidity: Int
//    let dewPoint, windSpeed: Double
//    let windDeg: Int
//    let windGust: Double
//    let weather: [Weather?]
//    let clouds, pop: Int
//    let uvi: Double
//
//    enum CodingKeys: String, CodingKey {
//        case dt, sunrise, sunset, moonrise, moonset
//        case moonPhase = "moon_phase"
//        case temp
//        case feelsLike = "feels_like"
//        case pressure, humidity
//        case dewPoint = "dew_point"
//        case windSpeed = "wind_speed"
//        case windDeg = "wind_deg"
//        case windGust = "wind_gust"
//        case weather, clouds, pop, uvi
//    }
//}
//
//// MARK: - FeelsLike
//struct FeelsLike: Codable {
//    let day, night, eve, morn: Double
//}
//
//// MARK: - Temp
//struct Temp: Codable {
//    let day, min, max, night: Double
//    let eve, morn: Double
//}
//
// MARK: - Welcome
struct Welcome: Codable {
    let lat, lon: Double
    let timezone: String
    let timezoneOffset: Int
    let current: Current
    let hourly: [Current]
    let daily: [Daily]
    let alerts: [Alert]?

    enum CodingKeys: String, CodingKey {
        case lat, lon, timezone
        case timezoneOffset = "timezone_offset"
        case current, hourly, daily,alerts
    }
}

// MARK: - Alert
struct Alert: Codable {
//    let senderName, event: String
//    let start, end: Int
//    let alertDescription: String
//    let tags: [Any]?
//
//    enum CodingKeys: String, CodingKey {
//        case senderName = "sender_name"
//        case event, start, end
//        case alertDescription = "description"
//        case tags
//    }
}
// MARK: - Current
struct Current: Codable {
    let dt: Int
    let sunrise, sunset: Int?
    let temp, feelsLike: Double
    var pressure, humidity: Int
    let dewPoint, uvi: Double
    let clouds, visibility: Int
    let windSpeed: Double
    let windDeg: Int
    let windGust: Double?
    let weather: [Weather]
    let pop: Double?
    let rain: Rain?
    let snow: Double?

    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case uvi, clouds, visibility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather, pop, rain, snow
    }
}

// MARK: - Rain
struct Rain: Codable {
    let the1H: Double

    enum CodingKeys: String, CodingKey {
        case the1H = "1h"
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: Main
    let weatherDescription: Description
    let icon: String

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}

enum Main: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
}

enum Description: String, Codable {
    case brokenClouds = "broken clouds"
    case clearSky = "clear sky"
    case fewClouds = "few clouds"
    case lightRain = "light rain"
    case moderateRain = "moderate rain"
    case overcastClouds = "overcast clouds"
    case scatteredClouds = "scattered clouds"
}

// MARK: - Daily
struct Daily: Codable {
    let dt, sunrise, sunset, moonrise: Int
    let moonset: Int
    let moonPhase: Double
    let temp: Temp
    let feelsLike: FeelsLike
    let pressure, humidity: Int
    let dewPoint, windSpeed: Double
    let windDeg: Int
    let windGust: Double?
    let weather: [Weather]
    let clouds: Int
    let pop: Double
    let rain: Double?
    let uvi: Double
    let snow: Double?

    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, moonrise, moonset
        case moonPhase = "moon_phase"
        case temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather, clouds, pop, rain, uvi, snow
    }
}

// MARK: - FeelsLike
struct FeelsLike: Codable {
    let day, night, eve, morn: Double
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}


class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

//        if let jsonData = json.data(using: .utf8) {
//            let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)
//            self.dailyData=welcome?.daily ?? []
//            self.currentData = welcome?.current
////            print(dailyData)
//            print("локальні дані")
//        }
//        guard let currentData = currentData else{
//            return
//        }
