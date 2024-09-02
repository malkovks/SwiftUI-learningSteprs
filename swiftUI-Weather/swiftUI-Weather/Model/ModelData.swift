

import Foundation

@Observable class ModelData {
    var landmarks: [Landmark] = parsingJsonData("landmarkData.json")
    var hikes: [Hike] = parsingJsonData("hikeData.json")
    var profile = Profile.default
    var categories: [String: [Landmark]] {
        Dictionary(grouping: landmarks) { $0.category.rawValue }
    }
    
    var features: [Landmark] {
        landmarks.filter { $0.isFeatured }
    }
}



func parsingJsonData<T: Decodable>(_ fileName: String) -> T {
    
    let data: Data
    
    guard let localURL = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Can't find file ")
    }
    
    do {
        data = try Data(contentsOf: localURL)
    } catch {
        fatalError("Can not download data from exact url path")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Can't decode current value \(fileName) as \(T.self):\n\(error)")
    }
}
