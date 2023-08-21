//
//  ProfileView.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    let user: User
    var body: some View {
        VStack {
           //Header
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                    } else {
                        CircularProfileImageView(user: user, size: .xLarge)
                    }
                }
                
                Text(user.fullname)
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            
            
           //List
            List {
//                Section {
//                    ForEach(SettingsOptionsViewModel.allCases) { option in
//                        HStack {
//                            Image(systemName: option.imageName)
//                                .resizable()
//                                .frame(width: 24, height: 24)
//                                .foregroundColor(option.imageBackgroundColor)
//
//                            Text(option.title)
//                                .font(.subheadline)
//                        }
//                    }
//                }
                Section {

                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "bookmark.circle.fill")
                                .foregroundStyle(.white, Color(.systemBlue))
                            Text("Favorites")
                                
                                
                        }
                        
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "iphone.gen2.radiowaves.left.and.right.circle.fill")
                                .foregroundStyle(.white, Color(.systemGreen))
                            Text("Calls")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "tv.circle.fill")
                                .foregroundStyle(.white, Color(.systemOrange))
                            Text("Devices")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "folder.circle")
                            Text("Chats folder")
                        }
                        
                    }
                    

                }
                
                Section {
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "bell.badge.circle.fill")
                                .foregroundStyle(.white, Color(.systemRed))
                            Text("Notifications")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "lock.square.fill")
                                .foregroundStyle(.white, Color(.systemGray))
                            Text("Confidentiality")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "tray.2.fill")
                                .foregroundStyle(Color(.systemGreen))
                            Text("Data and memory")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "bubbles.and.sparkles.fill")
                                .foregroundStyle(Color(.systemBlue))
                            Text("Decor")
                        }
                        
                    }
                    Button {

                    } label: {
                        HStack {
                            Image(systemName: "globe.europe.africa.fill")
                                .foregroundStyle(Color(.systemPurple))
                            Text("Languager")
                        }
                        
                    }

                }
                
                Section {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundStyle(Color(.systemYellow))
                            Text("SingleTON Premium")
                        }
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                            Text("For developers")
                        }
                    }

                }
                
                Section {
                    Button("Log Out") {
                        
                    }
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundColor(.red)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.MOCK_USER)
    }
}
