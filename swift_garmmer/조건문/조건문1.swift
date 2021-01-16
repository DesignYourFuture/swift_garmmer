//
//  File.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/16.
//

import Foundation

var input = readLine()

switch input{
case "a": fallthrough
case "e": fallthrough
case "i": fallthrough
case "o": fallthrough
case "u": print("모음입니다");
default : print("자음입니다"); break;
}
