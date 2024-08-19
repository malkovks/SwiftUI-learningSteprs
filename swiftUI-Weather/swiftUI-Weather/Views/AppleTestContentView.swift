//
//  ImageView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 15.08.2024.
//

import SwiftUI
import MapKit

struct AppleTestContentView: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            ContainerRelativeShape()
                .fill(.lightBlue)
                .ignoresSafeArea(.all, edges: .vertical)
            Spacer()
            VStack(spacing: 10) {
//                MapContentView(coordinate: <#CLLocationCoordinate2D#>)
//                .padding(.bottom, 20)
                ImageViewCircle(image: Image("turtlerock"))
                    .offset(x: -100, y: -150)
                    .padding(.bottom, -150)
                DescriptionContentView(mainText: "Saint-Petersburg", secondText: "Second city count population in country", description: "This city was founded in 1703 by Peter the greatest. In some century Saint-Petersburg was the Capital of Country")
            }
            
            Spacer()
            
        })
        .ignoresSafeArea(.container,edges: .horizontal)
       
    }
}

#Preview {
    AppleTestContentView()
}
