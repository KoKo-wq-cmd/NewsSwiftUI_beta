//  Created by Kostya on 31/08/2024.


import Foundation

enum NetworkError: String, Error {
	
	case invalidUrl = "Invalid URL"
	case invalidResponse = "Invalid response from server"
	case invalidData = "Data received from server is invalid"
}
