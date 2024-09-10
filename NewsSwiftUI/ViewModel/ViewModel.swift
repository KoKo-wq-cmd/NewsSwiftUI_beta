//  Created by Kostya on 01/09/2024.


import Foundation

@MainActor
final class ViewModel: ObservableObject {
	
	//MARK: - Properties
	@Published var topNews = [Article]()
	@Published var bottomNews = [Article]()
	
	init() {
		fetchUpperNews()
		fetchBottomNews()
	}
	
	//MARK: - Methods
	func fetchUpperNews() {
		Task {
			do {
				let articlesUpper = try await NetworkManager.shared.getNews(urlString: URLConstants.urlUpperNews)
				topNews = articlesUpper.articles
				
			} catch {
				if let error = error as? NetworkError {
					print(error)
				}
			}
		}
		
	}
	
	func fetchBottomNews() {
		Task {
			do {
				let articlesBottom = try await NetworkManager.shared.getNews(urlString: URLConstants.urlBottomNews)
				bottomNews = articlesBottom.articles
			} catch {
				if let error = error as? NetworkError {
					print(error)
				}
			}
		}
		
	}
	
	
}
