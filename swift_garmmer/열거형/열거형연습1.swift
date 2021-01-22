//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/22.
//

import Foundation

enum Direction {
    case north
    case south
    case east,west
}

var directionToHead = Direction.west

switch directionToHead {
case Direction.north :
    print("북쪽입니다.")
case Direction.south :
    print("남쪽입니다.")
case Direction.west :
    print("서쪽입니다.")
case Direction.east :
    print("동쪽입니다.")
}

enum HTTPCode : Int {
    case OK = 200
    case NOT_MODIFY = 304
    case INCORRECT_PAGE = 404
    case SERVER_ERROR = 500
    
    var value : String {
        return "HTTPCode number is \(self.rawValue)"
    }
    
    func getDescription() -> String {
        switch self {
        case .OK:
            return "응답이 성공했습니다. HTTP 코드는 \(self.rawValue)입니다."
        case .NOT_MODIFY:
            return "변경된 내역이 없습니다. HTTP 코드는 \(self.rawValue)입니다."
        case .INCORRECT_PAGE:
            return "존재하지 않는 페이지입니다. HTTP 코드는 \(self.rawValue)입니다."
        case .SERVER_ERROR:
            return "서버 오류입니다. HTTP 코드는 \(self.rawValue)입니다."
        }
    }
    
    static func getName() -> String {
            return "This Enumeration is HTTPCode"
    }

    
    
}

print(HTTPCode.OK.rawValue)

enum Rank : Int {
    case one = 1
    case two,three,four,five //2 3 4 5
}

print(Rank.one.rawValue)
print(Rank.two.rawValue) // 자동할당된 모습을 볼 수 있다.
print(Rank.three.rawValue)

enum Rank2: Int {
    case one = 10
    case two = 20
    case three,four,five //21 22 23
}

print(Rank2.one.rawValue)
print(Rank2.two.rawValue) // 자동할당된 모습을 볼 수 있다.
print(Rank2.three.rawValue)

enum ImageFormat {
    case JPEG
    case PNG(Bool)
    case GIF(Int,Bool)
}

var newImage = ImageFormat.PNG(true)
newImage = .GIF(256,false)

var response = HTTPCode.OK
response = .NOT_MODIFY

print()
print(response.value)
print(response.getDescription())
print(HTTPCode.getName())

enum UIImagePickerControllerSourceType : Int {
    case photoLibrat
    case camera
    case savedPhotosAlbum
}
