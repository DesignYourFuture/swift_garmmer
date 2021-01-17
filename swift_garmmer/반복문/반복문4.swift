//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/17.
//

import Foundation

print("정수를 입력하세요:" ,terminator : " ")
var input = readLine();

var num = Int(input!)!

for i in 1...num{
    for j in 1...i{
        print(j, terminator:" ")
    }
    print("")
}
