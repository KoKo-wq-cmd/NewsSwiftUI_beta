//  Created by Kostya on 05/09/2024.


import SwiftUI

struct TitleTextView: View {
	let topNewsString: String
	
	var body: some View {
		Text(topNewsString)
			.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
			.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.leading)
			.padding(.top)
	}
}

#Preview {
	TitleTextView(topNewsString: "Top News")
}
