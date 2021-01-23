//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/23.
//

import Foundation
/*
 델리게이트(대리자) : 이벤트 처리를 위임하고, 실제로 이벤트가 발생하면 위임된 대리자가 콜백 메소드를 호출해주는
 델리게이트 패턴을 많이 사용하는데, 이 패턴을 구현하기 위해 이용되는 것이 바로 프로토콜이다.
 
 프로토콜에 선언된 프로퍼티나 메소드의 형식을 프로토콜의 '명세'라고 부르고,
 이 명세에 맞추어 실질적인 내용을 작성하는 것을 '프로토콜을 구현한다'라고 한다.
 
 */

protocol SomePropertyProtocol {
    var name : String { get set } // 읽기 쓰기
    var description : String { get } // 읽기
}

// SomePropertyProtocol 프로토콜을 구현한 구조체
struct RubyMember: SomePropertyProtocol {
    var name = "홍길동"
    var description: String {
        return "Name : \(self.name)"
    }
}

// 프로토콜 메소드
protocol SomeMethodProtocol {
    func execute(cmd: String)
    func showPort(p: Int) -> String
}

struct RubyService: SomeMethodProtocol {
    func execute(cmd: String) {
        if cmd == "start" {
            print("실행합니다.")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port : \(p)"
    }
}


protocol NewMethodProtocol {
    mutating func execute(cmd command : String, desc: String)
    func showPort(p:Int, memo desc: String) -> String
}

struct RubyNewService : NewMethodProtocol {
    func execute(cmd command: String, desc: String) {
        if command == "start"{
            print("\(desc)를 실행합니다.")
        }
    }
    
    func showPort(p: Int, memo desc: String) -> String {
        return "Port : \(p), Memo : \(desc)"
    }
}

/*
 프로토콜에서 우리가 주의해야 할 점
 외부 매개변수 명은 일치시켜야 한다
 그러나 내부 매개변수 명은 다르게 할 수 있다.
 */

protocol MService {
    mutating func execute (cmd : String)
    func showPort(p:Int) -> String
}

struct RubyMservice : MService {
    var paramCommand : String?
    
    mutating func execute(cmd : String) {
        self.paramCommand = cmd
        if cmd == "start"{
            print("실행합니다.")
        }
    }
    
    func showPort(p: Int) -> String {
        return "Port : \(p), now command : \(self.paramCommand)"
    }
}

// 프로퍼티를 변경할 때는 뮤테이팅 키워드 필요하다
// 그러나 클래스에서는 없어도 되는데 콜 오브 레퍼런스라서 그렇다
