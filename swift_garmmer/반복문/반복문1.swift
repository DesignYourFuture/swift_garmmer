//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

var sum = 0
for i in 1...100{
    if i%3==0{
        sum += i
    }
}
print("for문의 계산결과는 \(sum)")

sum=0
var i=0
while i<=100{
    if i%3==0{
        sum += i
    }
    i+=1
}
print("while문의 계산결과는 \(sum)")

i=0
sum=0
repeat{
    if i%3==0{
        sum += i
    }
    i+=1
}while i<=100
print("repeat-while문의 계산결과는 \(sum)")
