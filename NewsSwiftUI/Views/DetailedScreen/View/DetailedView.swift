//  Created by Kostya on 03/09/2024.

import SwiftUI

struct DetailedView: View {
	//MARK: - Properties
	let article: Article
	
	//MARK: - Body
	var body: some View {
		
		ZStack(alignment: .topLeading) {
			ScrollView(.vertical) {
				MainImageView(article: article)
				
				VStack(alignment: .leading, spacing: 20) {
					Text(article.title)
						.titleFont()
					if let description = article.description {
						Text(description)
							.descriptionFont()
					}
					
					Text(article.publishedAt.convertDate())
						.descriptionFont()
				}
				.padding(.horizontal)
				.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
				.background(.background)
				.background(GradientAvatarView())
			}
			.ignoresSafeArea()
			.navigationBarBackButtonHidden(true)
			BackButtonView()
				.padding(.leading)
		}
		
	}
}


//#Preview {
//	DetailedView(
//		article: Article(
//			title: "Example",
//			description: "Example",
//			url: "",
//			urlToImage: "https://picsum.photos/200",
//			publishedAt: Date()
//		)
//	)
//}



