//  Created by Kostya on 05/09/2024.


import SwiftUI

struct GradientAvatarView: View {
	
	var body: some View {
		GeometryReader { _ in
			LinearGradient(
				colors: [Color(UIColor.systemBackground), .clear],
				startPoint: .bottom,
				endPoint: .top
			)
			.frame(height: SizeConstant.avatarHeight / 4)
			.offset(y: -SizeConstant.avatarHeight / 4)
		}
	}
	
}
