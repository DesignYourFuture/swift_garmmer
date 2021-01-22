//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

struct food {
    var name : String
    var calories : Int
    
    init(name : String, calories : Int) {
        self.name = name
        self.calories = calories
    }
}

var f1 = food.init(name: "subak", calories: 100)
var f2 = food(name:"ramen", calories: 800)
var f3 = food(name: "drink", calories: 200)
/*
print(f1)
print(type(of: f1))
print(f2)
print(type(of: f2))
*/

var farr = [food]() // 푸드 타입 배열로 선언
farr.append(f1)
farr.append(f2)
farr.append(f3)

var sum = 0
for cal in farr {
    sum += cal.calories
}
print(sum)
