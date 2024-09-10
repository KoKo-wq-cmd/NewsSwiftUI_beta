//  Created by Kostya on 31/08/2024.


import SwiftUI

struct HomeView: View {
	
	//MARK: - Properties
	@StateObject var vm = ViewModel()
	
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: true) {
				
				//MARK: - Top News
				TitleTextView(topNewsString: "Top News")
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(spacing: 20) {
						ForEach(vm.topNews, id: \.url) { article in
							NavigationLink(destination: DetailedView(article: article)) {
								TopArticleView(article: article)
							}
							.buttonStyle(.plain)
						}
					}
					.padding(.horizontal)
				}
				.shadow(color: .black.opacity(0.2),radius: 8, x:5,y: 8)
				
				//MARK: - Bottom News
				TitleTextView(topNewsString: "Bottom News")
				ScrollView(.horizontal, showsIndicators: false) {
					HStack(spacing: 20) {
						ForEach(vm.bottomNews, id: \.url) { article in
							NavigationLink(destination: DetailedView(article: article)) {
								BottomArticleView(article: article)
							}
							.buttonStyle(.plain)
						}
					}
				}
				.shadow(color: .black.opacity(0.2),radius: 8, x:5,y: 8)
				.padding(.horizontal)
			}
			.background(.gray.opacity(0.3))
			.refreshable {
				vm.fetchUpperNews()
				vm.fetchBottomNews()
			}
		}
		
	}
}


#Preview {
	HomeView()
}



