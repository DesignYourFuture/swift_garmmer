//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

var read : String?
read = readLine()
// 옵셔널 타입 스트링 읽기 리드라인은 기본적으로 스트링 타입임

//print(read)

var arr : [Int]? // 옵셔널 타입으로 선언한 arr
arr = read?.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })

var brr : [Int] // 일반 타입으로 선언한 brr
brr = arr!.sorted()
//print(brr.count)
print(brr[brr.count-1]) // brr의 마지막 인덱스를 참조하기 위한 코드 sort는 되었으니까 제일 큰건 마지막 꺼 찾으면 돼

//set 사용하여서 푸는 방법
let crr = Set(arr!).sorted()
print(crr[crr.capacity-1])
print(crr)
print(arr)


/*
 ? 는 옵셔널 만드는 거래
 옵셔널은 쉽게 말해서 nil가능성이 있는 경우에 사용되고
 ! 통해서 강제 헤제 가능
 != 비교하는 부호 사용시 띄어쓰기 주의해야함.
*/

//print(type(of:arr)) // 이 코드를 보면 arr 이 옵셔널인것을 확인할 수 있음.
//arr = arr?.sorted()
//print(arr)
