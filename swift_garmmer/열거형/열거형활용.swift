//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

/*
 익스텐션 - 이미 존재하는 클래스나 ㅜㄱ조체 열거형 등의 객체에 새로운 기능을. 추가하여 확장해주는 구문
 오브젝트-C 의 카테고리와 비슷
 */


extension Double {
    var km : Double { return self * 1_000.0 } // 언더바의 사용은 자리수를 구분하기 위한 것이라 쓰지 않은 것과 차이가 없다.
    var m : Double { return self }
    var cm : Double { return self / 100.0 }
    var mm : Double { return self / 1_000.0 }
    var description : String {
        return "\(self)km 는 \(self.km)m, \(self)cm는 \(self.cm)m, \(self)mm는 \(self.mm)m입니다."
    }
}

print(2.km)
print(5.5.cm)
print(125.mm)
print(7.0.description)

let distance = 42.0.km + 195.m
print("마라톤의 총 거리는 \(distance)m 입니다.")

extension Int {
    func repeatRun( task : () -> Void ) {
        for _ in 0 ..< self {
            task()
        }
    }
}

let d = 3
d.repeatRun (task: {
    print("반갑습니다.")
})

extension Int {
    mutating func square() { // mutating이란 인스턴스 자신을 수정하도록 허락하는 키워드
        self = self * self
    }
}

var value = 3
print(value.square()) // 9

