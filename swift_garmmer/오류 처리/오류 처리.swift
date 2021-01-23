//
//  main.swift
//  swift_garmmer
//
//  Created by lgw9898 on 2021/01/23.
//

import Foundation

/*
 NS가 붙는 타입이 있는데 이건 import Foundation에서 제공하는 프레임워크다.
 기존의 것들과 호환되지만, 사용할 수 있는 메소드가 더 다양하다.
 
 서브스트링이란 메소드를 주목해야하는데, 문자열 처리 알고리즘에서 상당히 도움이 될 것으로 생각된다.
 원하는 부분에서 짤라서 원하는 길이만큼 인자값으로 받는 구문을 아래에 작성
 
 서브스트링 : 잘라내기 위함.
 엔에스랜지 : 시작위치로 부터 원하는 만큼 받기 위함
 */

enum DateParseError : Error {
    case overSizeStirng
    case underSizeString
    case incorrectFormat(part : String)
    case incorrectData(part : String)
}

//func canThrowErrors() throws -> String
//func cannotThrowErrors() -> String

/*
 둘다 오류 잡지만 위에 코드는 객체로 만들어서 던질 수 있는 반면
 아래코드는 오류 객체를 던질 수 없다.
 */


// 실제로 날짜를 분석하는 함수를 작성하고, 실행 과정에서 발생할 수 있는 오류 상황에서 오류 객체를 던져보도록 하자.
struct Date {
    var year : Int
    var month : Int
    var date : Int
}

func parseDate(param : NSString) throws -> Date {
    
    // 입력된 문자가 10이 아닐 경우 분석이 불가능하므로 오류
    guard param.length == 10 else {
        if param.length > 10 {
            throw DateParseError.overSizeStirng
        } else {
            throw DateParseError.underSizeString
        }
    }
    
    // 반환할 객체 타입 선언
    var dateResult = Date(year: 0, month: 0, date: 0)
    
    // 연도 정보 분석
    if let year = Int(param.substring(with: NSRange(location: 0, length: 4))){
        dateResult.year = year
    } else {
        throw DateParseError.incorrectData(part: "year")
    }
    
    // 월 정보 분석
    if let month = Int(param.substring(with: NSRange(location: 5, length: 2))){
    
        guard  month > 0 && month < 13 else {
            throw DateParseError.incorrectData(part: "month")
        }
        dateResult.month = month
    } else {
        throw DateParseError.incorrectData(part: "month")
    }
    
    // 일 정보 분석
    if let date = Int(param.substring(with: NSRange(location: 8, length: 2))){
    
        guard  date > 0 && date < 32 else {
            throw DateParseError.incorrectData(part: "date")
        }
        dateResult.date = date
    } else {
        throw DateParseError.incorrectData(part: "date")
    }
    
    return dateResult
}

// 여기서 또하나!! 이렇게 정의된 함수나 메소드를 호출할 때는 try키워드를 붙여서 사용해야만 한다.
try parseDate(param: "2020-02-28")

let date = try parseDate(param: "2020-02-28")
print(date)

func getPartsDate(date : NSString, type : String) {
    do {
        let date = try parseDate(param: date)
        
        switch type {
        case "year":
            print("\(date.year)년 입니다.")
        case "month":
            print("\(date.month)월 입니다.")
        case "date":
            print("\(date.date)일 입니다.")
        default:
            print("입력값에 해당하는 날짜정보가 없습니다.")
        }
        
    } catch DateParseError.overSizeStirng {
        print("입력된 문자열이 너무 깁니다. 줄여주세요.")
    } catch DateParseError.underSizeString {
        print("입력된 문자열이 불충분합니다. 늘려주세요.")
    } catch DateParseError.incorrectFormat(let part) {
        print("입력된 \(part)에 해당하는 형식이 잘못되었습니다.")
    } catch DateParseError.incorrectData(let part) {
        print("입력값의 \(part)에 해당하는 값이 잘못사용되었습니다. 확인해주세요.")
    } catch {
        print("알 수 없는 오류가 발생하였습니다.")
    }
    
}

getPartsDate(date: "2015-12-31", type: "year")

getPartsDate(date: "2015-13-31", type: "month")

getPartsDate(date: "2015-12-40", type: "date")

let date2 = try! parseDate(param: "2015-09-31")
print("\(date2)")

// 잘 작성한 코드란 ?

// 오류처리를 잘 해준 코드를 잘 작성한 코드라고 한다. 나일균 교수님께서도 default나 혹시 모를 오류에 대해서 대응하는 코드를 항상 작성하라고 하셨다.
