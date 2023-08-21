//
//  ProfileViewModel.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 30.06.2023.
//

import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedItem: PhotosPickerItem? {
        didSet { }
    }
    @Published var profileImage: Image?

    func loadItem() async throws {
        guard let item = selectedItem else { return }
//        guard let imageDate = try await item.loadTransferable(type: Date.self) else { return }
//        guard let uiImage = UIImage(data: imageDate) else { return }
//        self.profileImage = Image(uiImage: uiImage)
    }
}

