//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

// 오버로딩

class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        return " 시간당 \(self.currentSpeed)의 속도로 이동하고 있습니다"
    }
    
    func makeNoise() {
        
    }
}

class Car : Vehicle {
    var gear = 0
    var engineLevel = 0
    
    override var currentSpeed: Double {
        get {
            return Double(self.engineLevel * 50)
        }
        set {
            //아무것도 입력하지 않음
        }
    }
    
    override var description: String {
        get {
            return "Car : engineLevel =\(self.engineLevel), so currentSpeed=\(self.currentSpeed)"
        }
        set {
            print("New Value is \(newValue)")
        }
    }
}



class HybridCar : Car {
    
}

class KickBoard : Vehicle {
    
}

let h = HybridCar()
print(h.description)

let k = KickBoard()
k.description
