//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/18.
//

import Foundation

/*
 이 부분은 @escaping 과 @autoescape에 대해서 알아볼 것이다.
 
 이스케이핑은 인자값으로 전달된 클로저를 저장해 두었다가, 나중에 다른 곳에서도 실행할 수 있도록 허용해주는 속성.
 
 참고 : 스위프트에서 기본적으로 인자값으로 전달된 클로저는 탈출불가의 성격이라 함수내에서 직접실행을 위해 사용만 가능하다.
 이걸 깨는데 이스케이핑에 대한 것.
 */

func callback(fn :() -> Void) {
    fn()
}

callback {
    print("closure가 실행되었습니다.")
}

func callback2(fn: @escaping () -> Void ) {
    let f = fn // 클로저를 상수 f에 대입
    f() // 대입된 클로저를 실행
}

callback2 {
    print("클로저2가 실행")
}

// 오토 클로저
func condition (stmt: () -> Bool) {
    if stmt() == true{
        print("참입니다")
    } else {
        print("거짓입니다.")
    }
}
// 일반구문으로 실행
condition(stmt: {
          4>2
})
// 클로저 구문
condition{ 4>2}

//오토 클로저 부분도 사실 정확하게 이해가 가지 않는다.
// 이 부분도 추후에 학습을 하며 필요한 경우에 더 자세히 보도록하자
// 지연된 실행이라는 특성이 있다고 한다.
