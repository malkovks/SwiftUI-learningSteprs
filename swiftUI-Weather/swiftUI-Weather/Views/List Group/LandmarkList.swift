//
//  LandmarkList.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct LandmarkList: View {
    @State private var presentFavoritesOnly = false
    @Environment(ModelData.self) var modelData
    
    var filteredLandmarks: [Landmark] {
        return modelData.landmarks.filter { landmark in
            (!presentFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $presentFavoritesOnly) {
                    Text("Favorites only")
                        .bold()
                }
                .tint(.mint)
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.smooth, value: filteredLandmarks)
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.large)
        } detail: {
            Text("Select landmark")
        }
    }
}


#Preview {
    LandmarkList()
        .environment(ModelData())
}
