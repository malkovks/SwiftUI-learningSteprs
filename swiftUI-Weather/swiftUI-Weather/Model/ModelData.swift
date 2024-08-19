

import Foundation

var landmarks: [Landmark] = parsingJsonData("landmarkData.json")

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
