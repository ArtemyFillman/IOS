//
//  CorrespondenceView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 09.07.2023.
//

import SwiftUI

struct CorrespondenceView: View {
    @State private var messageText = ""
    var body: some View {
        VStack {
            ScrollView {
                //header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Artemy Fillman")
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
                
                //messages
                ForEach(0 ... 15, id: \.self) { message in
                    CorrespondenceMessageCell(isFromCurrentUser: Bool.random())
                }
                
                
                
            
            }

            //message iput view
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button {
                    print("Send message")
                } label: {
                    Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)

            }
            .padding()
        }
    }
}

struct CorrespondenceView_Previews: PreviewProvider {
    static var previews: some View {
        CorrespondenceView()
    }
}
