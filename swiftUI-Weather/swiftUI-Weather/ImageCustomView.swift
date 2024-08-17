//
//  ImageView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 15.08.2024.
//

import SwiftUI
import MapKit

struct ImageCustomView: View {
    var body: some View {
        ZStack(alignment: .center, content: {
            ContainerRelativeShape()
                .fill(.lightBlue)
                .ignoresSafeArea(.all, edges: .vertical)
            Spacer()
            VStack(spacing: 10) {
                MapContentView()
                    .padding(.bottom, 20)
                DescriptionView(mainText: "Saint-Petersburg", secondText: "Second city count population in country", description: "This city was founded in 1703 by Peter the greatest. In some century Saint-Petersburg was the Capital of Country")
            }
            
            Spacer()
            
        })
        .ignoresSafeArea(.container,edges: .horizontal)
       
    }
}

#Preview {
    ImageCustomView()
}

struct BackgroundCustomView: View {
    
    let color: Color
    
    var body: some View {
        ContainerRelativeShape()
            .fill(color)
            .ignoresSafeArea(.all, edges: .vertical)
    }
}

struct MapContentView: View {
    
    @State private var location = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 59.9386, longitude: 30.3141), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $location)
                .layoutPriority(1)
                .ignoresSafeArea()
            HStack(spacing: 10) {
                Spacer()
                Button(action: plusZoom) {
                    Image(systemName: "plus.circle.fill")
                        .font(.largeTitle)
                        .padding()
                        .clipShape(Circle())
                }
                .padding(.bottom, 10)
                Button(action: minusZoom) {
                    Image(systemName: "minus.circle.fill")
                        .font(.largeTitle)
                        .padding()
                        .clipShape(Circle())
                }
                .padding(.bottom,10)
            }
            
        }
        .frame(height: 400)
    }
    

    
    private func minusZoom(){
        location.span.longitudeDelta *= 2
        location.span.latitudeDelta *= 2
    }
    
    private func plusZoom(){
        location.span.longitudeDelta /= 2
        location.span.latitudeDelta /= 2
    }
}

struct DescriptionView: View {
    
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
            HStack(alignment: .top,spacing: 20) {
                Text(secondText)
                    .font(.system(size: 14,weight: .light))
                    .frame(alignment: .leading)
                    
                Text(description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}
