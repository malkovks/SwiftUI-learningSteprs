//
//  ImageViewCircle.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct ImageViewCircle: View {
    let image: Image
    var body: some View {
        HStack(alignment: .center) {
            image
                .resizable()
                .frame(width: 150, height: 150, alignment: .leading)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white,lineWidth: 4)
                }
                .shadow(radius: 7)
        }
    }
}

#Preview {
    ImageViewCircle(image: Image("turtlerock"))
}
