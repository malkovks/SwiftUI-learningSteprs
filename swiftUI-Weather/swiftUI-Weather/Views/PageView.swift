//
//  PageView.swift
//  swiftUI-Weather
//
//  Created by Константин Малков on 02.09.2024.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 1
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing, 10)
                .padding(.bottom, 10)
        }
        .aspectRatio(3/2, contentMode: .fit)
        
        
        
    }
}

#Preview {
    PageView(pages: ModelData().features.map({ FeaturedCard(landmark: $0) }))
}
