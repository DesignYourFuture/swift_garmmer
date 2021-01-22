//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

// 상속 :  한 클래스가 다른 클래스에서 정의된 프로퍼티나 메소드를 받아서 사용하는 것

/*
 프로퍼티와 메소드를 물려준 클래스는 부모클래스 = 상위클래스 = 슈퍼클래스 = 기본클래스
 프로퍼티와 메소드를 물려받은 클래스는 자식클래스 = 하위클래스 = 서브클래스 = 파생클래스
 */
class A {
    var name = "Class A"
    
    var description: String {
        return "This class name is \(self.name)"
    }
    
    
    func foo() {
        print("\(self.name)'s method foo is called")
    }
}

let a = A()
print(a.name)
a.description
a.foo()

// 서브 클래싱
class B: A{
    
    var prop = "Class B"
    
    func boo() -> String {
        return "Class B prop = \(self.prop)"
    }
}

let b = B()
print(b.prop)
b.boo()
print()

print(b.name)
b.foo()
print()

print(b.name)
b.foo()
print()

