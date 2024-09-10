//  Created by Kostya on 01/09/2024.


import SwiftUI

extension Text {
	func titleFont() -> some View {
		self
			.foregroundStyle(.primary)
			.font(.system(size: 16, weight: .bold, design: .rounded))
	}
	
	func descriptionFont() -> some View {
		self
			.foregroundStyle(.primary)
			.font(.system(size: 14, weight: .regular, design: .rounded))
			.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
	}
}
