//
//  LandmarkList.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.large)
        } detail: {
            Text("Select landmark")
        }
        
    }
}


#Preview {
    LandmarkList()
}
