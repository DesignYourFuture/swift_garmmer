//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/21.
//

import Foundation

//프로퍼티 옵저버

/*
 willSet : 프로퍼티의 값이 변경되기 직전에 호출되는 옵저버
 didSet : 프로퍼티의 값이 변경된 직후에 호출되는 옵저버
 */

struct Job {
    var income : Int = 0 {
        willSet(newIncome) {
            print("이번 달 월급은 \(newIncome)입니다.")
        }
        
        didSet {
            if income > oldValue { // oldValue 는 값이 바뀌기 이전의 값을 불러올 수 있다.
                print("웝급이 \(income - oldValue)원 증가하셨네요. 소득세가 상향될 예정입니다.")
            } else {
                print("저런, 월급이 삭감되었군요. 그래도 소득세는 깎아드리지 않아요 알죠?")
            }
        }
    }
}

var job = Job(income: 100000) // 생성할 때 주는 초기값
job.income = 200000 // 이 코드로 인해 프로퍼티 값이 변경되면서 윌셋 디드셋 실행된다.
job.income = 150000 // 이 코드에선 oldValue가 200000만 된다.
