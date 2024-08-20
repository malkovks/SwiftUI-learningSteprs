//
//  MapContentView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 18.08.2024.
//

import SwiftUI
import MapKit

struct MapContentView: View {
    
    var coordinate: CLLocationCoordinate2D
    
    private var location: MKCoordinateRegion {
        .init(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    }
    
    var body: some View {
        VStack {
            Map(position: .constant(.region(location)))
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
//        location.span.longitudeDelta *= 2
//        location.span.latitudeDelta *= 2
    }
    
    private func plusZoom(){
//        location.span.longitudeDelta /= 2
//        location.span.latitudeDelta /= 2
    }
}
//#Preview {
//    MapContentView()
//}
