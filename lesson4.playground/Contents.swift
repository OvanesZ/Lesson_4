import UIKit




enum Transmission {
    case auto, manual
}

enum MovableObject {
    case windows (WindowsAction)
    case doors (DoorsAction)
}

enum WindowsAction {
    case open, close
}

enum DoorsAction {
    case open, close
}


class Car {
    let brand: String
    let color: UIColor
    let transmission: Transmission
    var km: Double
    var isWindowsOpen: Bool = false
    var isDoorsOpen: Bool = false
    
    init(brand: String, color: UIColor, transmission: Transmission, km: Double) {
        self.brand = brand
        self.color = color
        self.transmission = transmission
        self.km = km
    }
    
    static func Cars() {
        
    }
    
}
