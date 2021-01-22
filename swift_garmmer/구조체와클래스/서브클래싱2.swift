//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        return " 시간당 \(self.currentSpeed)의 속도로 이동하고 있습니다"
    }
    
    func makeNoise() {
        
    }
}

let baseVehicle = Vehicle()

print(baseVehicle.description)

class Bicycle : Vehicle {
    var hasBascket = false
}

let bicycle = Bicycle()
bicycle.hasBascket = true

bicycle.currentSpeed = 20.0

print("자전거 : \(bicycle.description)")

class Tandem : Bicycle {
    var passenger = 0
}

let tandem = Tandem()
tandem.hasBascket = true
tandem.passenger = 2
tandem.currentSpeed = 14.0
print("Tandem : \(tandem.description)")
