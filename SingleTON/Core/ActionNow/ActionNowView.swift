//
//  ActionNowView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI

struct ActionNowView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 21) {
                
                
                
                ForEach(0 ... 10, id: \.self) { user in
                    VStack {
                        ZStack(alignment: .bottomTrailing) {
                            Image(systemName: "person.circle.fill")
                            CircularProfileImageView(user: User.MOCK_USER, size: .large)
                            
                            ZStack {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 18, height: 18)
                                
                                Circle()
                                    .fill(Color(.systemGreen))
                                    .frame(width: 12, height: 12)
                            }
                        }
                        Text("Bruce")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding()
        }

    }
}

struct ActionNowView_Previews: PreviewProvider {
    static var previews: some View {
        ActionNowView()
    }
}
