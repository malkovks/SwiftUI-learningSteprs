//
//  LandmarkDetail.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex { $0.id == landmark.id }!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        VStack {
            ScrollView {
                Spacer()
                MapContentView(coordinate: landmark.locationCoordinates)
                ImageViewCircle(image: landmark.image)
                    
                VStack(spacing:20) {
                    DescriptionContentView(mainText: landmark.name, secondText: landmark.state, description: landmark.description)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                Spacer()
            }
            
        }
        .padding(.horizontal, 20)
        
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: modelData.landmarks[0])
        .environment(modelData)
}
