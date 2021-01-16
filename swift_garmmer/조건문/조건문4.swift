//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

let value: UInt32 = arc4random() % 3 + 1 // 1에서 3까지의 난수 생성

print("선택하시오 (1:가위, 2:바위, 3:보)")
var line = readLine()

//print(type(of: value))
print(value)
//print(type(of: line))

var key : Int
key = Int(line!)!
/*
 키 코드를 보면 옵셔널 강제 헤제시 느낌표 두개 적는데
 그 이유는 line을 헤제하여서 일반 string 타입으로 만든 후에
 정수로 바꾼 후 키에 대입시 다시 옵셔널 깨서 넣어야 함.
 정확한 건 모르겠으나 이래야 옵셔널이 깨짐.
 */
if key==value{
    print("비겼습니다.");
} else {
    if value == 1{
        switch key {
        case 2 : print("이겼습니다.")
        default :print ("졌습니다.")
        }
    }
    if value == 2{
        switch key {
        case 3 : print("이겼습니다.")
        default :print ("졌습니다.")
        }
    }
    if value == 3{
        switch key {
        case 1 : print("이겼습니다.")
        default :print ("졌습니다.")
        }
    }
}
