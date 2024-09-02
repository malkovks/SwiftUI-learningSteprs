import Foundation

struct Profile {
    var username: String
    var prefersNotification: Bool = true
    var seasonalPhoto = Season.spring
    var goalDate = Date()
    
    static let `default` = Profile(username: "k_malkov")
    
    enum Season: String, Identifiable, CaseIterable {
        case spring = "🌷"
        case autumn = "🍁"
        case winter = "❄️"
        case summer = "🌞"
        
        var id: String { rawValue }
    }
    
}
