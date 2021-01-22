//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

// 메소드란? 구조체와 클래스 내부에서 선언된 함수를 말한다.
/*
 인스턴스 메소드 : 객체 생성을 통해 호출
 타입 메소드 : 객체 생성 없이도 호출 가능
 */

class Location {
    var x = 0.0, y = 0.0
    
    func moveByX(x deltaX : Double, y deltaY : Double) {
        self.x += deltaX
        self.y += deltaY
    }
}

var loc = Location()
loc.x = 10.5
loc.y = 12.0
loc.moveByX(x: 3.0, y: 4.5)

print("이제 새로운 좌표는 (\(loc.x),\(loc.y))입니다.")




class Foo {
    // 타입 메소드 선언
    class func fooTypeMethod() {
        // 타입 메소드의 구현 내용이 여기에 들어갑니다.
    }
}

let f = Foo()

Foo.fooTypeMethod()
