//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/17.
//

import Foundation

repeat{
    
    print("더하기A,뺴기S,곱하기M,나누기D,끝내기Q");
    var symbol = readLine()

    symbol = symbol?.uppercased()
    print(symbol)
    if symbol == "Q"{
        print("프로그램을 종료합니다.")
        break;
    }
    print("두 수를 공백으로 분리하여 입력하세요.")
    var num = readLine()

    var arr = num?.components(separatedBy: " ").map{ (value:String) -> Int in return Int(value)! }
// 띄어쓰기를 통해 분리한 후 맵을 통해 스트링을 인트 값으로 변경
// 여기서 중요한 점은 그대로 옵셔널이라는 것을 잊지 말기

    var brr = arr! //옵셔널을 깨서 brr에 넣기

    print(type(of: brr))

    if brr[0]>brr[1]{
        var temp = brr[0]
        brr[0] = brr[1]
        brr[1] = temp
        print("자리바꿈:")
    }
    
    func guard_check(){
        
        guard brr[0] != 0 else{
            print("나누는 수가 0이 될수가 없어요 - 가드 구문")
            return
        }

    }
    
    switch symbol{
    case "A" : print("\(brr[0]+brr[1])")
    case "M" : print("\(brr[0]*brr[1])")
    case "D" : guard_check()
        print("\(brr[0]/brr[1])")
    case "S" : print("\(brr[0]-brr[1])")
    case "Q" : print("프로그램을 종료합니다")
        break;
    default : print("잘못된 연산자를 입력하셨어요.")
    }


} while true
