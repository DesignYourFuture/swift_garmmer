//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

class point{
    var x : Int
    var y : Int
    
    init(x : Int , y: Int) {
        self.x = x
        self.y = y
    }
}

func equal(_ p1 : point, _ p2 : point) {
    if p1.x == p2.x && p1.y == p2.y {
        return print("둘은 동일한 좌표입니다.")
    } else {
        print("동일하지 않은 좌표입니다.")
    }
}

func quadrant(_ p3 : point) {
    var p3 = (p3.x,p3.y)
    
    switch p3 {
    case let (x,y) where x > 0 && y > 0 : print("제 1사분면에 있습니다.")
    case let (x,y) where x < 0 && y > 0 : print("제 2사분면에 있습니다.")
    case let (x,y) where x < 0 && y < 0 : print("제 3사분면에 있습니다.")
    case let (x,y) where x > 0 && y < 0 : print("제 4사분면에 있습니다.")
    default : print("좌표축 위에 있습니다.")
    }
    
}


var p1 = point(x:1,y:2)
var p2 = point(x:-1,y:2)

equal(p1, p2)
quadrant(p1)
quadrant(p2)
