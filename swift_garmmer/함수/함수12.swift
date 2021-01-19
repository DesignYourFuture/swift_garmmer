//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/19.
//

import Foundation

print("2부터 100사이의 소수를 출력합니다.")

// 클로저로 만들어 본다 일부러!
var count = 0
let f = ({ () -> Void in
    for i in 2...100{
        
        for j in 2...i{
            if i%j == 0{
                count+=1
                if count >= 2{
                    break // 이 부분을 넣음으로써 시간 복잡도의 이득.
                }
            }
        }
        if count == 1 {
            print(i,terminator : " ")
            count = 0
        } else {
            count = 0
        }
        
    }
})

f()

// 레퍼런스 참조 형식으로 만들어 본다. - inout 이라고 스위프트에서는 부른다

var arr = [Int]() // 배열 선언 후 초기화 이렇게 해야함.

func find_num(_ arr : inout [Int]){ // inout 키워드를 써야 레퍼런스 참조 가능
    
    for i in 2...100{
        
        for j in 2...i{
            if i%j == 0{
                count+=1
                if count >= 2{
                    break // 이 부분을 넣음으로써 시간 복잡도의 이득.
                }
            }
        }
        if count == 1 {
            arr.append(i)
            count = 0
        } else {
            count = 0
        }
    }
}
print()
find_num(&arr) // 주소를 전달해 준다 -> 왜냐하면 레퍼런스 참조를 할 것이기 때문에
print(arr)

