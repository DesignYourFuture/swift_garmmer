//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

// 클로저와 함수에 대해서 알아보자.
// 이 부분은 직접 코딩을 통해서 이해하기 위한 학습부분

func basic(param: Int) -> (Int) -> Int {
    let value = param + 20 // 1. 처음에 인자값 받아와서 밸류에 30이란 값 설정된다.

    func append(add:Int) -> Int{ // 3. 인자값 없이 호출되었는데, 함수의 life cycle을 보면
        // 3.(이어서) 아직 외부함수가 내부함수가 종료되지 않아 살아있어서 밸류값도 여전히 존재함
        print("add : \(add)")
        return value + add // 4. 밸류값(30)과 add의 값은 호출 시에 두번째 괄호안의 값이다
        
        // 4. (이어서) 내부함수 종료 후 외부함수로 다시 흐름 이동한다.
    }

    return append // 2. 어펜드로 함수 실행 흐름 이동
    // 5. 내부함수가 종료되어 외부함수로 흐름이 나오면 베이직을 완전히 종료하고 전체로 돌아간다.
}

let result = basic(param:10)(20)
print(result)
//print(result(10)) // 여기서 끝.

