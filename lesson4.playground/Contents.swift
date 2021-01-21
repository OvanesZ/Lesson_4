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


var sportCar1 = SportCar(brand: "audi", color: .blue, transmission: .auto, km: 10.0, diskRadius: 19.0, levelPetrol: 51, isEngineState: .start)

var sportCar2 = SportCar(brand: "ww", color: .black, transmission: .manual, km: 100.0, diskRadius: 17.0, levelPetrol: 45, isEngineState: .stop)

var trunkCar1 = TrunkCar(brand: "volvo", color: .white, transmission: .auto, km: 1000.0, maxTrunkVolume: .max)


sportCar1.levelPetrol = 30
print(sportCar1)

print(trunkCar1)





