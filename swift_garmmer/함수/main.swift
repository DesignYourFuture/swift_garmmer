//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation


while true {
    
    print("앞면(1) 또는 뒷면(0): ", terminator : "")
    var input2 = Int(readLine()!)! // 옵셔널 인트가 아닌 정수 인트로 저장 돼
   
    switch input2 {
    case 1: fallthrough
    case 2: break
        // 스위치 문에도 브레이크 있어야 그 스위치문 탈출한다.
    default:
        print("잘못된 값을 입력하셨습니다. 다시 입력해주세요.")
        continue
    }
    
    var rnum = Int(arc4random_uniform(2))
    
    // 이 문제는 익명함수(클로져) 공부를 위해 클로져를 사용해서 풀어보기
    ({ (s1:Int, s2:Int) -> Void in
        if s1 == s2{
            print("맞았습니다.")
        }else{
            print("틀렸습니다.")
        }
    })(rnum,input2)
    
    var input : String
    
    label : gg repeat{
        print("계속하시겠습니까? y/n")
        input = readLine()!
    } while input=="n"

}
