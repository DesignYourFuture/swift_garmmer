//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

/*
 구조체 : 콜 오브 밸류
 클래스 : 콜 오브 레퍼런스
 */

struct point{
    var x : Int
    var y : Int
}

print("x,y 좌표를 띄어쓰기로 분리하여 입력해주세요.")
var input = readLine()

var arr : [Int]? // 옵셔널 타입으로 선언한 arr
arr = input?.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
//print(arr!)

var brr : point = point(x : arr![0], y: arr![1]) // 아... 이 코드 엄청 해매었는데, 옵셔널 헤제 후에 인덱스 써야해 ㅠㅠ
/*
 올바른 예 : arr![0]
 잘못된 예 : arr[0]!
 실수하지 말자!!
 */
//print(brr)
//print(type(of:brr)) // 포인트는 포인트 타입! 내가 선언했으니까

switch brr{
    case _ where brr.x > 0 && brr.y > 0 : print("제 1사분면 위에 있습니다.")
    case _ where brr.x < 0 && brr.y > 0 : print("제 2사분면 위에 있습니다.")
    case _ where brr.x < 0 && brr.y < 0 : print("제 3사분면 위에 있습니다.")
    case _ where brr.x > 0 && brr.y < 0 : print("제 4사분면 위에 있습니다.")
    default : print("좌표축 위에 있습니다.")
    
}

class point2{
    var x : Int
    var y : Int
    
    init(x : Int,y : Int) {
        self.x = x
        self.y = y
    }
}

var crr : point2 = point2(x: arr![0], y: arr![1])

switch crr{
    case _ where crr.x > 0 && crr.y > 0 : print("제 1사분면 위에 있습니다.")
    case _ where crr.x < 0 && crr.y > 0 : print("제 2사분면 위에 있습니다.")
    case _ where crr.x < 0 && crr.y < 0 : print("제 3사분면 위에 있습니다.")
    case _ where crr.x > 0 && crr.y < 0 : print("제 4사분면 위에 있습니다.")
    default : print("좌표축 위에 있습니다.")
    
}
