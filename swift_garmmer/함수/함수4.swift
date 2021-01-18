//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

print("소득을 입력하세요(만원) : " , terminator : "" )
var input = Float(readLine()!)!

func get_tax(outvar invar : Float) -> () {
    
    var invar = invar // 인자값으로 반아온 invar는 스위프트 특성상 let타입임
    // 따라서 이 코드를 통해 let타입을 var타입으로 바꿔서 사용
    
    switch invar {
    case 0...1000:
        invar = invar * 0.08
        print("소득세는 : \(invar) 만원 입니다.")
    default:
        invar = invar - 1000
        invar = invar * 0.1 + 80
        print("소득세는 : \(invar) 만원 입니다.")
    }
}

get_tax(outvar: input)
