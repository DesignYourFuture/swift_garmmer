//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/23.
//

import Foundation

/*
 델리게이션은 델리게이트 패턴과 연관되는 아주 중요한 개념으로, 델리게이트 패턴의 자세한 사용법은 이 책의 후반부에서 다시 다루게 된다.
 간략하게 요약하면, 특정 기능을 다른 객체에 위임하고, 그에 따라 필요한 시점에서 메소드의 호출만 받는 패턴.
 */

protocol FuelPumpDelegate {
    func lackFuel()
    func fullFuel()
}

class FuelPump {
    var maxGage : Double = 100.0
    var delegate : FuelPumpDelegate? = nil
    
    var fuelGage : Double {
        didSet {
            if oldValue < 10 {
                // 연료가 부족하면 델리게이트의 메소드를 호출
                self.delegate?.lackFuel()
            } else if oldValue == self.maxGage {
                // 연료가 가득차면 델리게이트의 메소드 호출
                self.delegate?.fullFuel()
            }
        }
    }
    
    init(fuelGage : Double = 0){
        self.fuelGage = fuelGage
    }
    
    // 연료펌프를 가동한다.
    func startPump() {
        while(true) {
            if (self.fuelGage > 0) {
                self.jetFuel()
            } else {
                break
            }
        }
    }
    
    // 연료를 엔진에 분사한다. 분사할 때마다 연료 게이지의 눈금은 내려간다.
    func jetFuel() {
        self.fuelGage -= 1
    }
}


// 아직까지 프로토콜에 대해서 잘 와닿지 않는데 앱 개발을 직접하면서
// 더 필요할 때 공부하자
