//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/20.
//

import Foundation

//연산 프로퍼티 - set 생략가능하나 get은 생략 불가
/*
 set 이 생략되면 외부에서 연산 프로퍼티에 값을 할당할 수 없으며, 내부적인 연산 처리를 통해 값을 제공받는
 읽기 전용 프로퍼티가 만들어집니다.
 get은 필수적인데 이게 생략되면 연산 프로퍼티가 값을 반환하는 기능 자체를 갖지 못하기 때문에
 
 구글링 해보니까 java의 getter setter과 비슷하다고 한다.
 그리고 get - 읽기 set - 쓰기 라고 생각하자
 정확하게는 C#에서 빌려온 개념이라고 한다... 씨샾을 몰라서 이해가 어려운 듯 하다... ㅠㅠ
 
 set(newValue) 에서 newValue는 자기 자신이다.
 */

struct UserInfo {
    var birth : Int! // 저장 프로퍼티 태어난 연도
    
    //연산 프로퍼티 올해가 몇년도인지 계산
    var thisYear : Int! {
        get {
            let df = DateFormatter()
            df.dateFormat = "yyyy"
            return Int(df.string(from:Date()))
        }
    }
    
    // 연산 프로퍼티 : 올해 - 태어난 년도 + 1
    var age : Int {
        get {
            return (self.thisYear - self.birth) + 1 // 더 안전하게 사용하려면 묶자.
        }
    }
}


let info = UserInfo(birth : 1998)
print(info.age)
