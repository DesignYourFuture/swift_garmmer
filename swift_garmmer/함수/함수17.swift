//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/19.
//

import Foundation

//간단한 메뉴 시스템작성

func print_answer(_ input : Int){
    switch  input{
    case 1:
        print("1번 메뉴가 호출되었습니다.")
    case 2:
        print("2번 메뉴가 호출되었습니다.")
    case 3:
        print("3번 메뉴가 호출되었습니다.")
    case 4:
        print("4번 메뉴가 호출되었습니다.")
    default:
        break
    }
}

func check_menu_number(_ input : Int) -> Bool{
    
    switch input {
    case 1...4:
        print_answer(input)
        return true
    default:
        print("잘못된 수를 입력하셨습니다. 다시 입력하세요")
        return false
    }
}

func print_menu(){
    
    while true {
        
        print("1. 햄버거 \n2. 치즈버거 \n3. 샌드위치 \n4.  종료")
        print("원하는 메뉴를 선택하세요")
    
        var input = Int(readLine()!)!
        if check_menu_number(input) == true {
            break
        }
    }

}

print_menu()
