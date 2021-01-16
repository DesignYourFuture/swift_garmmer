//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

var read = readLine()
var arr = read?.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! })
/*
 아직 클로저 옵셔널 등에 대해서 학습 전이라 코드가 정확히 어떤 의미인지는 모르겠지만
 추측하자면 read? : 리드라인 통해서 읽어온 데이터가 아직 확인되지 않기에 ? 붙음
 
 */
arr = arr?.sorted()
print(arr[0])
