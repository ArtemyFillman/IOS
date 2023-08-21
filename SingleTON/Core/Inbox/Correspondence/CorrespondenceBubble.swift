//
//  CorrespondenceBubble.swift
//  SingleTON
//
//  Created by Артём Филимоненко on 09.07.2023.
//

import SwiftUI

struct CorrespondenceBubble: Shape {
    let isFormCurrentUser: Bool
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [
            .topLeft,
            .topRight,
            isFormCurrentUser ? .bottomLeft : .bottomRight
        ], cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

struct CorrespondenceBubble_Previews: PreviewProvider {
    static var previews: some View {
        CorrespondenceBubble(isFormCurrentUser: true)
    }
}
