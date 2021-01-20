//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/20.
//

import Foundation

// 저장 프로퍼티
class User {
    var name : String

    init() { // 이 코드는 인스턴스가 생성될 때 간접적으로 호출 된다.
        self.name = ""
    }
    // 초기화 부분이 없으면 저장 프로퍼티는 초기화 해달라는 오류가 난다.
}

// 저장 프로퍼티2 - 옵셔널 타입으로 만들어준다
class User2{
    var name : String?
}
// 저장 프로퍼티3 - 옵셔널 타입으로 만들어준다
class User3{
    var name : String!
}

// 저장 프로퍼티4 - 프로퍼티에 초기값을 할당해준다.
class User4 {
    var name : String = ""
}


struct FixedLengthRange {
    var startValue : Int // 시작값
    let length : Int // 값의 범위
}

struct FlexibleLengthRange {
    let startValue : Int // 시작값
    var length : Int // 값의 범위
}
// 0,1,2의미
var rangeOfFiexedIntegers = FixedLengthRange(startValue: 0, length: 3)
// 4,5,6의미
rangeOfFiexedIntegers.startValue = 4

// 0,1,2
var rangeOfFlexibleIntegers = FlexibleLengthRange(startValue: 0, length: 3)
// 0,1,2,3,4
rangeOfFlexibleIntegers.length = 5

// 변수에 할당된 구조체 인스턴스는 언제든지 개발자가 값을 수정할 수 있다.

// 지연 저장 프로퍼티
// 지연 저장 프로퍼티란 일반적인 저장 프로퍼티는 생성될 때 초기화 되지만
// 얘는 선언만 되고 초기화는 호출하는 시점에서 초기화를 한다.

class OnCreate {
    init() {
        print("OnCreate!!")
    }
}

class LazyTest {
    var baes = 0
    lazy var late = OnCreate()
    // lazy 키워드가 붙으면 호출 시에 초기화 됨.

    init() {
        print("Lazy Test")
    }
}

let lz = LazyTest()

print(lz.late)

// 저장 프로퍼티 중 일부는 연산이나 로직 처리를 통해 얻어진 값을
// 이용하여 초기화 하는 경우 즉, 반환된 값을 이용하여 초기화 하는 것을
// 스위프트는 지원함

// 여기 방법이 바로 클로저를 이용한 저장 프로퍼티 처리 방법
class PropertyInit {
    
    var value01 : String! = {
        print("value01 execute")
        return "return value : value01"
    }()
    
    let value02 : String! = {
        print("value02 execute")
        return "return value : value02"
    }()
}

let s = PropertyInit()
// 값이 출력되는데, 그 이유는 값이 평가되는 시점이 인스턴스를 생성하는 시점이기 때문이다.
print(s.value01!)
print(s.value02!)


// 여기 방법이 바로 클로저를 이용한 저장 프로퍼티 처리 방법
class PropertyInit2 {
    
    lazy var value03 : String! = {
        print("value03 execute")
        return "return value : value03"
    }()
}

let s1 = PropertyInit2()
// 아무것도 출력되지 않는데, lazy라는 키워드가 선언이 아닌
// 호출시에 초기화하기 때문이다.
print("아래 코드는 print문에 의한 코드입니다.")
print(s1.value03!)
// 여기서 value안의 코드가 전부 실행돼
