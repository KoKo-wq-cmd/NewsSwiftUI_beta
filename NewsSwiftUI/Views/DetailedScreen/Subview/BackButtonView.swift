//  Created by Kostya on 05/09/2024.


import SwiftUI

struct BackButtonView: View {
	@Environment(\.dismiss) var dismiss
	
	var body: some View {
		Button {
			dismiss()
		}label: {
			ZStack {
				Circle()
					.frame(width: 34)
					.foregroundStyle(.black)
					.opacity(0.3)
				Image(systemName: "chevron.left")
					.font(.title3)
					.fontWeight(.medium)
					.foregroundStyle(.white)
					.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
			}
		}
	}
}


#Preview {
	BackButtonView()
}
