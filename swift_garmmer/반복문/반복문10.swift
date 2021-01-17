//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/17.
//

import Foundation

print("실수의 값을 입력하세요")
var input = Float(readLine()!)
//print(input)
print("거듭제곱의 횟수를 입력하세요")
var input2 = Int(readLine()!)
//print(input2)
//입력을 잘 보면은 정수형으로 바로 전환하는데
// 여기서의 장점은 리드라인이 옵셔널 스트링이라 ! 통해서 강제헤제 한다.
// 근데 여기서 추가작업이 필요 없는 이유는 인풋2변수에 값이 들어가기 때문에 문제가 발생하지 않음.
// 근데 여기서 리드라인에 공백이 들어가면 정수형 변환시 문제가 있을 수 있는데 그냥 처리가 된다.
// 그 이유는 인풋2가 옵셔널 인트 타입이라서 가능함!!
var sum : Float = 1

for i in 1...input2!{
    //print("\(i) : \(sum) ")
    sum = sum * input!
}
print("결과값은 \(sum)입니다.")

