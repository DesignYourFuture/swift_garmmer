//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/17.
//

import Foundation

print("정수를 입력하세요")
var input = Int(readLine()!)

repeat{
    if input!<0 {
        print("음수는 입력할 수 없습니다~! 다시 입력해주세요")
        continue
    }
    break
}while true

var num = 0;

while input! >= 1{
    num = input! % 10
    print(num, terminator:"")
    input! = input! / 10
}
print("")
