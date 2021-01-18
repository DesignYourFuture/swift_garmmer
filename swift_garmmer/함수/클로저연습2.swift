//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

//외부함수
func outer(param : Int) -> (Int) -> String {
    // 함수의 중첩시 이런 형태의 선언이 필요한가에 대한 의문갖기
    
    // 내부함수
    func inner(inc : Int) -> String {
        return "\(inc)를 리턴합니다."
    }
    
    print("1")
    
    return inner
}

let fn1 = outer(param:3)
let fn2 = fn1(30)


//일급함수의 특성인데 정확하게 이해하는게 필요할 듯 하다.

print(fn1) // 결과값 : (function)
/* 스스로 생각해본 이유 분석
 내부 함수에 들어가기 위해선 내부함수로 보낼 인자값이 필요한데,
 그 값이 존재하지 않기 때문에.
 */


print(fn1(10))
print(fn2)
