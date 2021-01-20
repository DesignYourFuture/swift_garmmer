//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

/*
 타입 프로퍼티 -- 쉽게 말해서 레퍼런스 참조 방식인데 전역 변수와도 비슷해
 타입 프로퍼티랑 다른 인스턴트를 통해 접근하더라도
 복사본이 아니라 실제로 값에 접근하는 것이다.

 즉, 특정 구조체나 클래스 열거형에서 모든 인스턴스들이 공유해야 하는 값을 정의할 때 유용
 */

struct Foo{
    // 타입 저장 프로퍼티
    static var sFoo = "구조체 타입 프로퍼티값"
    
    // 타입 연산 프로퍼티
    static var cFoo : Int {
        return 1
    }
}

class Boo {
    // 타입 저장 프로퍼티
    static var sFoo = "클래스 타입 프로퍼티값"
    
    static var cFoo : Int {
        return 10
    }
    
    // 재정의가 가능한 타입 연산 프로퍼티
    class var oFoo : Int {
        return 100
    }
}

print(Foo.sFoo)
// 구조체 타입 프로퍼티 값
Foo.sFoo = "새로운 값"
print(Foo.sFoo) // 원본이 변경된 것을 알 수 있다.
// 새로운 값
print(Boo.sFoo)
// 클래스 타입 프로퍼티 값
print(Boo.cFoo)
// 10
