//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

var dict = [Int:String]() // 딕셔너리 선언과 초기화
dict[1]="jan"
dict[2]="feb"
dict[3]="mar"
dict[4]="apr"
dict[5]="mar"
dict[6]="jun"
dict[7]="jul"
dict[8]="oct"
dict[9]="sep"
dict[10]="oct"
dict[11]="nov"
dict[12]="dec"

print("월번호를 입력하세요 : ")
var line = Int(readLine()!)!


switch line {
case 0...12:
    print(dict[line]!) // 옵셔널 헤제하기!
    break
default:
    print("잘못된 월번호를 입력하였어요.")
}
guard_check()


func guard_check(){
    
    guard line >= 0 && line <= 12 else{
        print("잘못된 월번호를 입력하였어요. - 가드 구문")
        return
    }

print(dict[line]!)
}

