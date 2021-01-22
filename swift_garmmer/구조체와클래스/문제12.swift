//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

struct TempDB {
    var title : String
    var singer : String
    var genre : String
}

var dblist = [TempDB]()

func menu () -> Int{
    print("*****************************")
    print("1.추가")
    print("2.출력")
    print("3.검색")
    print("4.종료")
    print("*****************************")
    print("메뉴를 선택하시오 : ", terminator : "")
    var input = Int(readLine()!)!
    if input == 4{
        print("프로그램을 종료합니다.")
        exit(0) // 종료 키 누르면 프로그램 로직 멈추기
    }
    return input
}

func add() ->(){
    
    print("제목 : ", terminator : "")
    var title = readLine()!
    print("가수 : ", terminator : "")
    var singer = readLine()!
    print("분류(가요, 팝, 클래식, 영화음악) : ", terminator : "")
    var genre = readLine()!
    
    var db : TempDB = TempDB(title: title, singer: singer, genre: genre)
    
    dblist.append(db)
    
}

func monitor() {
    print(dblist)
}

func search() {
    print("제목을 입력하세요")
    var stitle = readLine()!
    
    for i in dblist {
        if stitle == i.title{
            print("제목 : \(i.title), 가수 : \(i.singer), 분류 : \(i.genre) 입니다.")
            return 
        }
        
    }
}

while true {
    var num = menu()

    switch num {
    case 1 : add()
    case 2 : monitor()
    case 3 : search()
    default : print("수를 다시 입력하세용")
    }
}

