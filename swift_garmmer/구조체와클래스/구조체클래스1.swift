//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/19.
//

import Foundation

// 구조체와 클래스 내부에 정의된 변수나 상수를 프로퍼티나 속성이라고 부른다.
// 또한 클래스나 구조체 내부에서 정의된 함수가 메소드라고 한다

// 네이밍 룰이라고 실무에서 어느정도 약속된 것인데, 첫글자 대문자로 작성하고 언더바 지양한다

// 클래스와 구조체는 담을 수 있는 그릇으로 담을 수 있는 객체가 필요하다.
// 자바의 개념 생각하면 참 편하다.
// 원형틀을 이용해 찍어낸 것을 인스턴스라고 부른다.



struct Resolution {
    var width = 0
    var height = 0
    
    func desc() -> String {
        return "Resolution 구조체"
    }
}

class VideoMode{
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    
    var res = Resolution()
    
    func desc() -> String {
        return "VideoMode 클래스"
    }
}

let insRes = Resolution()
let insVMode = VideoMode()

let width = insRes.width
print("insRes의 인스턴스의 width의 값은 \(width)입니다")

let vMode = VideoMode()

print("vMode 인스턴스 width 값은 \(vMode.res.width)입니다.")

vMode.name = "sample"
vMode.res.width = 1200
print("\(vMode.name!) vMode 인스턴스 width 값은 \(vMode.res.width)입니다.")
// 참고로 옵셔널을 쉽게 기억하려면 그 변수가 nil값을 가질 수 있다면 옵셔널로 기억하면 좋다.

// 초기화 하는법 - 참고로 선언만으로 기본 초기화는 되지 않는다.
let defaultRes = Resolution(width: 1024, height: 768)
print("width : \(defaultRes.width),height: \(defaultRes.height)" )

// 구조체 값 전달 방식 : 복사에 의한 전달 (밸류)
let hd = Resolution(width : 1920 , height : 1080)
var cinema = hd
cinema.width = 2048 // 원본은 그대로 있고 할당된 친구만 바뀐다.
print("cinema 인스턴스의 width 값은 \(cinema.width)입니다.")
print("hd 인스턴스의 width 값음 \(hd.width)입니다.")

// 클래스의 값 전달 방식 : 참조에 의한 전달 (레퍼런스)

let video = VideoMode()
video.name = "Original Video Instance"
print("video 인스턴스의 name 값은 \(video.name!)입니다")
let dvd = video
dvd.name = "DVD Video Instance"
print("video 인스턴스의 name 값은 \(video.name!)입니다 ")
// 여기서 보면 레퍼런스 참조라 dvd에서 값을 바꿔도 변경한 것을 확인할 수 있다.

// 함수의 인자타입으로 구조체나 클래스를 줄 수도 있다.
// 이 구문에서는 학습할 것이 무엇이냐면 inout키워드가 없어도
// 레퍼런스 참조를 하기 때문에 inout키워드가 없어도 된다.
func changeName(v : VideoMode){
    v.name = "Function Video Instance"
}
changeName(v: video)
print("video의 인스턴스의 name값은 \(video.name!)입니다.")

/*
 == : 동일 인스턴스인지 비교할 때
 !== : 동일 인스턴스가 아닌지 비교할 떄
 */

if video === dvd {
    print("video와 dvd는 동일한 VideoMode 인스턴스를 참조하고 있군요")
}else {
    print("video와 dvd는 서로 다른 VideoMode 인스턴스를 참조하고 있군요")
}

let vs = VideoMode()
let ds = VideoMode()

if (ds === vs) {
    print("vs와 ds는 동일한 VideoMode 인스턴스를 참조하고 있군요")
}else {
    print("vs와 ds는 서로 다른 VideoMode 인스턴스를 참조하고 있군요")
}

// 구조체와 클래스는 스위프트에선 레퍼런스냐 밸류 참조냐에 따른 차이지
// 기존에 알던 개념과 다르다
