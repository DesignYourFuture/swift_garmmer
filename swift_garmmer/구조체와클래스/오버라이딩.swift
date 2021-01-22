//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

//오버라이딩 - 클래스로 부터 물려받는 것을 덮어 쓰는 것

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

let c = Car()

c.engineLevel = 5
print(c.currentSpeed)
c.description = "New Class Car"
print(c.description)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

class Bike : Vehicle {
    override func makeNoise() {
        print("빠라빠라빠라밤")
    }
}

let bk = Bike()
bk.makeNoise()
