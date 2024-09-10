//  Created by Kostya on 03/09/2024.


import SwiftUI

struct MainImageView: View {
	let article: Article
	
	var body: some View {
		GeometryReader { reader in
			if let url = article.urlToImage, let imageURL = URL(string: url) { AsyncImage(url: imageURL) { phase in
				if let image = phase.image {
					image
						.resizable()
						.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
						.offset(y: -reader.frame(in: .global).minY)
						.frame(width: SizeConstant.screenWidth, height: reader.frame(in: .global).minY + SizeConstant.avatarHeight + 10)
				}
			}
			}
		}
		.frame(height: SizeConstant.avatarHeight)
	}
}
