//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

var value = [1,9,5,7,3,2]

func order(s1:Int, s2:Int) -> Bool {
    if s1 > s2 {
        return true
    } else {
        return false
    }
}

value.sort(by: order) //내림차순 정렬
print(value)

var value2 = [1,9,5,7,3,2]
// 함수 order를 그렇다면 클로저 표현식으로 생각해 볼까??
value2.sort(by: {
    (s1:Int, s2:Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
})
print(value2)


var value3 = [1,9,5,7,3,2]

value3.sort(by: {( s1:Int, s2:Int ) -> Bool in
    return s1 > s2
})
print(value3)

var value4 = [1,9,5,7,3,2]

value4.sort(by: {$0 > $1})
print(value4)

var value5 = [1,9,5,7,3,2]
value5.sort(by: <) // 부등호에 따라서 오름차순 내림차순 만들 수 있다.
print(value5)
