//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/23.
//

import Foundation

//타입으로서의 프로토콜

protocol Wheel {
    func spin()
    func hold()
}

class Bicycle : Wheel {
    var moveState = false
    
    func spin() {
        self.pedal()
    }
        
    func hold() {
        self.pullBreak()
    }
    
    func pedal() {
        self.moveState = true
    }
    
    func pullBreak() {
        self.moveState = true
    }
    
}

let trans = Bicycle()

print(trans.moveState)

trans.pedal()
trans.pullBreak()
trans.spin()
trans.hold()


// 아래는 A와B의 프로토콜을 모두 포함하는 객체 타입이다.
protocol A {
    func doA()
}

protocol B {
    func doB()
}

class Impl: A,B {
    func doA() {
        
    }
    
    func doB() {
        <#code#>
    }
    
    func desc() -> String {
        return "Class instance method"
    }
}

var ipl: A & B = Impl()
ipl.doA()
ipl.doB()


