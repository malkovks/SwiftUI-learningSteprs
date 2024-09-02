import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(alignment: .top,spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            
            .frame(height: 185)
        }
        
    }
}

#Preview {
    let landmark = ModelData().landmarks
    return CategoryRow(categoryName: landmark[0].name, items: Array(landmark.prefix(4)))
}
