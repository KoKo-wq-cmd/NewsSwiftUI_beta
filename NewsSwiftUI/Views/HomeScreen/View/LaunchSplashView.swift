//  Created by Kostya on 05/09/2024.


import SwiftUI

struct LaunchSplashView: View {
	@State private var isActive = false
	@State private var size = 0.1
	@State private var opacity = 0.5
	
	var body: some View {
		VStack {
			VStack {
				Image("WeatherLogo")
			}
			.scaleEffect(size)
			.opacity(opacity)
			.onAppear {
				withAnimation(.easeIn(duration: 1.2)) {
					self.size = 0.3
					self.opacity = 1.0
				}
			}
		}
		.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
		.background(Color.gray.opacity(0.8))
		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
				self.isActive = true
			}
		}
		.fullScreenCover(isPresented: $isActive) {
			HomeView()
		}
	}
}


#Preview {
	LaunchSplashView()
}
