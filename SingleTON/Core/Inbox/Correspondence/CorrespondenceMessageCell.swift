//
//  CorrespondenceMessageCell.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 09.07.2023.
//

import SwiftUI

struct CorrespondenceMessageCell: View {
    let isFromCurrentUser: Bool
    var body: some View {
        HStack {
            if isFromCurrentUser {
               Spacer()
                
                Text("This is a test message for now that is a longer message. Let's see what happens")
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemBlue))
                    .foregroundColor(.white)
                    .clipShape(CorrespondenceBubble(isFormCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            } else {
                HStack(alignment: .bottom, spacing: 8) {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xxSmall)
                    Text("This is a test message for now that is a longer message. Let's see what happens")
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray5))
                        .foregroundColor(.black)
                        .clipShape(CorrespondenceBubble(isFormCurrentUser: isFromCurrentUser))
                        .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)

                    
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 8)
        
    }
}

struct CorrespondenceMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        CorrespondenceMessageCell(isFromCurrentUser: false)
    }
}
