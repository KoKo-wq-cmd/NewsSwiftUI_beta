//  Created by Kostya on 01/09/2024.


import Foundation

extension Date {
	func convertDate() -> String {
		return formatted(.dateTime.hour().minute().month().year())
	}
}
