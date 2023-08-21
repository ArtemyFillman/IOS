//
//  NewMessageView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI

struct NewMessageView: View {
    @State private var searchText = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ScrollView {
                TextField("To:", text: $searchText)
                //                .frame(height: 44)
                //                .padding(.leading)
                    .background(Color(.systemGroupedBackground))
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
   
                 Section  {
                        Button {
                            
                        } label: {
                            HStack {
                                Text("Edit")
                            }
                        }
                        Button {
                            
                        } label: {
                            HStack {
                                Text("Create a channel")
                            }
                        }
                        Button {
                            
                        } label: {
                            HStack {
                                Text("To create a group")
                            }
                        }
                        Button {
                            
                        } label: {
                            HStack {
                                Text("Create new contact")
                            }
                        }
                    }
                
                
                Text("CONTACTS")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()

                    
                    ForEach(0 ... 12, id: \.self) { user in
                        VStack {
                            HStack {
                                CircularProfileImageView(user: User.MOCK_USER, size: .small)
                                
                                Text("Piter Parker")
                                    .font(.subheadline)
                                    .fontWeight(.black)
                                
                                Spacer()
                            }
                            .padding(.leading)
                            
                            Divider()
                                .padding(.leading, 40)
                        }
                    }
                    
                }
                
                .navigationTitle("New Message")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button("Cancel") {
                            dismiss()
                        }
                        .foregroundColor(.black)
                    }
                }
            }
        }
    }



struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NewMessageView()
        }
    }
}
