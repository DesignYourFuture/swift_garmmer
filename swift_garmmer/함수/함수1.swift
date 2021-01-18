//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

/*
 함수의 인자값
 func 함수명 ( 외부 내부 : 타입 , 외부 내부 : 타입 , ... ) -> 반환값
 */

import Foundation

print("정수를 입력하세요.")
var input = Int(readLine()!)! // 옵셔널 헤제 두번해서 인풋 타입을 일반 인트로 만든다.

//print(type(of: input))

func even(value : Int) -> String{
    if value % 2 == 1{
        return "\(value)는 홀수입니다."
    } else {
        return "\(value)는 짝수입니다."
    }
}

func absolute( _ value : Int) -> (){
    return print("absolute의 결과 \(abs(value)) 입니다.")
}

func sign(_ value : Int) -> (){
    if value >= 0 {
        return print("양수입니다.")
    } else {
        return print("음수입니다.")
    }
}
print("")
print(even(value: input))
//print("")
absolute(input)
//print("")
sign(input)
