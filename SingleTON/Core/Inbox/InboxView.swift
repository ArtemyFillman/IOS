//
//  InboxView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI

struct InboxView: View {
    @State private var showNewMessageView = false
    @State private var user = User.MOCK_USER
    @State private var search = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                
                    
                ActionNowView()
                List {
                    ForEach(0 ... 10, id: \.self) { message in
                        InboxRowView()
                    }
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
                
            }
            
            //Кликабельная иконка|Переход на страницу с профилем
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        NavigationLink(value: user) {
                            CircularProfileImageView(user: user, size: .small)
                            
                        }
                        
                        TextField("Search for interesting ", text: $search)
                            .background(Color(.systemGroupedBackground))
                            .font(.subheadline)
                            .padding(.horizontal, 20)
                            .padding(12)
                            .background(Color(.systemGray6))
                            .cornerRadius(40)
                            
                        
//                        Text("Chats")
//                            .font(.title)
//                            .fontWeight(.semibold)
                    }
                    
                }
                
               
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "livephoto")
                        }
                        
                        
                        Button {
                            showNewMessageView.toggle()
                        } label: {
                            Image(systemName: "square.and.pencil")
                                
                                .frame(width: 32, height: 32)
                                
                        }
                        
                    }
                    
                    
                    
                    
                }
                
                
                
            }
        }
    }
}


struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
