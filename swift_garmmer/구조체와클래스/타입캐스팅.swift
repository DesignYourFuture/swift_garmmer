//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

// 타입 캐스팅

class Vehicle {
    var currentSpeed = 0.0
    
    func accelerate(){
        self.currentSpeed += 1
    }
}


class Car : Vehicle {
    var gear : Int {
        return Int(self.currentSpeed / 20) + 1
    }
    
    func wiper() {
        // 창을 닫습니다.
    }
    
}

let trans : Vehicle = Car()

class SUV : Car {
    var fourWheel = false
}

let jeep : Vehicle = SUV()

func move(param: SUV){
    param.accelerate()
}

func move2(param : Vehicle){
    param.accelerate()
}

var list = [SUV]()
list.append(SUV())

var list2 = [Vehicle]()

list2.append(Vehicle())
list2.append(Car())
list2.append(SUV())
