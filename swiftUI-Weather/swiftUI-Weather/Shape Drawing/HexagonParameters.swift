

import CoreGraphics

struct HexagonParameters {
    struct Segment {
        let line: CGPoint
        let curve: CGPoint
        let control: CGPoint
    }
    
    static let adjustment: CGFloat = 0.085
    
    static let segments = [
        Segment(line: CGPoint(x: 0.6, y: 0.05),
                curve: CGPoint(x: 0.40, y: 0.05),
                control: CGPoint(x: 0.50, y: 0.00)),
        Segment(line: CGPoint(x: 0.05, y: 0.20 + adjustment),
                curve: CGPoint(x: 0.00, y: 0.3 + adjustment),
                control: CGPoint(x: 0.00, y: 0.25 + adjustment)),
        Segment(line: CGPoint(x: 0.00, y: 0.7  - adjustment),
                curve: CGPoint(x: 0.05, y: 0.8 - adjustment),
                control: CGPoint(x: 0.00, y: 0.75 - adjustment)),
        Segment(line: CGPoint(x: 0.4, y: 0.95),
                curve: CGPoint(x: 0.6, y: 0.95),
                control: CGPoint(x: 0.5, y: 1)),
        Segment(line: CGPoint(x: 0.95, y: 0.8 - adjustment),
                curve: CGPoint(x: 1.0, y: 0.7 - adjustment),
                control: CGPoint(x: 1, y: 0.75 - adjustment)),
        Segment(line: CGPoint(x: 1, y: 0.3 + adjustment),
                curve: CGPoint(x: 0.95, y: 0.2 + adjustment),
                control: CGPoint(x: 1.0, y: 0.25 + adjustment))
    ]
}
