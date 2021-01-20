//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/20.
//

import Foundation

// 공부를 위한 코드 분석은 주석으로 달자!

struct Rect {
    // 사각형이 위치한 기준 좌표(좌측 상단 기준)
    var originX : Double = 0.0, originY : Double = 0.0 // 저장 프로퍼티
    
    // 가로 세로 길이
    var sizeWidth : Double = 0.0, sizeHeight : Double = 0.0 // 저장 프로퍼티
    
    // 사각형 X의 좌표 중심
    var centerX : Double { // 연산 프로퍼티
        get {
            return self.originX + (sizeWidth / 2) // self를 통해서 구조체 내에 선언된 것 가져와서 사용함
        }
        
        set(newCenterX) {
            originX = newCenterX - (sizeWidth / 2)
        }
    
    }
    
    // 사각형 Y의 좌표 중심
    var centerY : Double { // 연산 프로퍼티
        get {
            return self.originY + (sizeHeight / 2)
        }
        
        set(newCenterY) {
            originX = newCenterY - (sizeHeight / 2)
        }
    
    }

}

var square = Rect(originX: 0.0, originY: 0.0, sizeWidth: 10.0, sizeHeight: 10.0)
print("square.centerX = \(square.centerX), square.centerY = \(square.centerY)")
