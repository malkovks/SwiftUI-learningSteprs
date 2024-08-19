//
//  BackgroundCustomView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct BackgroundCustomView: View {
    
    let color: Color
    
    var body: some View {
        ContainerRelativeShape()
            .fill(color)
            .ignoresSafeArea(.all, edges: .vertical)
    }
}
