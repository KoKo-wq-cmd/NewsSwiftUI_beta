//  Created by Kostya on 31/08/2024.


import Foundation

// MARK: - Welcome
struct News: Decodable {
	let status: String
	let totalResults: Int
	let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
	//	let source: Source
	//	let author: String
	let title: String
	let description: String?
	let url: String
	let urlToImage: String?
	let publishedAt: Date
	//	let content: String
}

