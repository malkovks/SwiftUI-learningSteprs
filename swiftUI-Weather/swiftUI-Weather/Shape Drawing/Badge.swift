//
//  Badge.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 01.09.2024.
//

import SwiftUI

struct Badge: View {
    var badgeSymbol: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: Angle(degrees: (Double(index) / Double(8))  * 360.0)
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader(content: { geometry in
                badgeSymbol
                    .scaleEffect(1.0 / 4.0 ,anchor: .top)
                    .position(x: geometry.size.width/2.0,y: (3.0 / 4.0) * geometry.size.height)
            })
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
