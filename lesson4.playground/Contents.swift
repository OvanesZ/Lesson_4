import UIKit




enum Transmission {
    case auto, manual
}

enum MovableObject {
    case windows (WindowsAction)
    case doors (DoorsAction)
    case engine (EngineState)
}

enum WindowsAction {
    case open, close
}

enum DoorsAction {
    case open, close
}

enum EngineState {
    case start, stop
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


class SportCar: Car {
    var diskRadius: Double
    var levelPetrol: Double
    var isEngineState: EngineState
    
    init(brand: String, color: UIColor, transmission: Transmission, km: Double, diskRadius: Double, levelPetrol: Double, isEngineState: EngineState) {
        self.diskRadius = diskRadius
        self.levelPetrol = levelPetrol
        self.isEngineState = isEngineState
        super.init(brand: brand, color: color, transmission: transmission, km: km)
        
        func engineStart() {
            if levelPetrol > 50 {
                print("Запуск разрешен")
                EngineState.start
            }
        }
        
        func engineStop() {
            if levelPetrol < 50 {
                print("Запуск запрещен")
                EngineState.stop
            }
        }
        
            }
        }
        
    


class TrunkCar: Car {
    var maxTrunkVolume: Int
    init(brand: String, color: UIColor, transmission: Transmission, km: Double, maxTrunkVolume: Int) {
        self.maxTrunkVolume = maxTrunkVolume
        super.init(brand: brand, color: color, transmission: transmission, km: km)
    }
    
}


