//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

func random_number () -> Int {
    
    return Int(arc4random_uniform(2)) //숫자 0에서부터 2개 생성 즉 0,1 생성
    //Uint 타입이라서 인트형으로 변환해주기
}

for _ in 1...5{
    print(random_number())
}
