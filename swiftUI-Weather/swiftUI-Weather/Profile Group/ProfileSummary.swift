//
//  ProfileSummary.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 01.09.2024.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    
    var profile: Profile
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Text("\(profile.username)")
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotification ? "On" : "Off")")
                Text("Seasons: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading,spacing: 10, content: {
                    Text("Completed Badges")
                        .font(.headline)
                    ScrollView(.horizontal) {
                        HStack(content: {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        })
                    }
                })
                
            }
           
            
            Divider()
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                HikeView(hike: modelData.hikes[0])
            }
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
