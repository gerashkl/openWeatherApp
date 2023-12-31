/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Hourly : Codable {
	let dt : Int?
	let temp : Double?
	let feels_like : Double?
	let pressure : Int?
	let humidity : Int?
	let dew_point : Double?
	let uvi : String?
	let clouds : Int?
	let visibility : Int?
	let wind_speed : Double?
	let wind_deg : Int?
	let wind_gust : Double?
	let weather : [Weather]?
	let pop : String?

	enum CodingKeys: String, CodingKey {

		case dt = "dt"
		case temp = "temp"
		case feels_like = "feels_like"
		case pressure = "pressure"
		case humidity = "humidity"
		case dew_point = "dew_point"
		case uvi = "uvi"
		case clouds = "clouds"
		case visibility = "visibility"
		case wind_speed = "wind_speed"
		case wind_deg = "wind_deg"
		case wind_gust = "wind_gust"
		case weather = "weather"
		case pop = "pop"
	}

	

}
