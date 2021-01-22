//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

struct book {
    var name : String
    var num : Int
    
}

print("검색하려는 이름을 입력하세요.")
var input = readLine()

var books = [book]()

for i in 1...5 {
    var bowl = book.init(name: "s\(i)", num: i)
    books.append(bowl)
}

//print(books)


for i in books{
    if input == i.name{
        print(i.num)
    }
}
