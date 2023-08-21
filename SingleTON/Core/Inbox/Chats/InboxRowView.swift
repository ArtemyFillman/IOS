//
//  InboxRowView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        Button {
        
        } label: {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImageView(user: User.MOCK_USER, size: .medium)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Heath Ledger")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Some test message for now that spans more than oha line of this yes")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .lineLimit(2)
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                }
                
                HStack {
                    Text("Yesterday")
                    
                    Image(systemName: "chevrone.right")
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
        }

    }
}

struct InboxRowView_Previews: PreviewProvider {
    static var previews: some View {
        InboxRowView()
    }
}
