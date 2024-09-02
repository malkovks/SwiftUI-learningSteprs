//
//  ProfileEditor.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 01.09.2024.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            Toggle(isOn: $profile.prefersNotification, label: {
                Text("\(profile.prefersNotification ?  "Disable" : "Enable") Notification")
            })
            Picker("Seasonal picker", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { value in
                    Text(value.rawValue).tag(value)
                }
            }
            DatePicker(selection: $profile.goalDate,in: dateRange) {
                Text("Goal Date")
            }
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
