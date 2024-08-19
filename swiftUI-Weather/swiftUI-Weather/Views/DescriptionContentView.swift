//
//  DescriptionContentView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI

struct DescriptionContentView: View {
    
    let mainText: String
    let secondText: String
    let description: String
    
    var body: some View {
        VStack {
            Text(mainText)
                .font(.title2)
                .frame(alignment: .leading)
                .font(.system(size: 20,weight: .medium,design: .rounded))
            Divider()
            VStack(alignment: .leading,spacing: 20) {
                Text("This page about" + secondText)
                    .font(.system(size: 24,weight: .bold))
                    .frame(alignment: .leading)
                    
                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
