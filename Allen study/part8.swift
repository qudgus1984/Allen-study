//
//  part8.swift
//  Allen study
//
//  Created by 이병현 on 2022/06/16.
//

import Foundation
//// 옵셔널 타입
//
//var a: Int = 10
//// var b: Int
//print(a)
//// print(b) // error 발생!
//
//// 오류를 제거해주기 위해선 옵셔널 타입으로 선언해야 함!
//var b: Int? // 옵셔널 타입
//print(b) // nil 출력
//
//// Int? 는 Int를 포함하고 있는 더 큰 원이라고 생각
//// 따라서 Int -> Int?로는 변환이 가능하지만, Int? -> Int 로 변환해 줄 때에는 특별한 조치가 필요
//var num1: Int = 5
//print(Optional(num1)) // Int타입을 Int? 타입으로 변환하기
//
//// 옵셔널 타입 추출 방법 4가지
//
//var num: Int? = 5
//// 강제 추출
//num!
//// nil이 아닌지 확인후, 강제 추출
//if num != nil {
//    print(num!)
//}
//
//// 옵셔널 바인딩(if let, gaurd let)
//var optionalName: String? = "Cody"
//if let name = optionalName {
//    print(name)
//}
//// Nil-Coalescing(닐 코얼레싱)
//optionalName ?? "Cody"
//
//// 함수에서 옵셔널 타입 파리미터의 사용
//// 함수의 정의
//func doSomePrint(with label: String, name: String? = nil) {
//// 옵셔널 타입 선언과 기본값 설정 -> 함수의 파라미터가 옵셔널 타입일 수 있음
//    print("\(label): \(name)")
//}
//
//doSomePrint(with: "레이블", name: "Cody")
//doSomePrint(with: "레이블") // 옵셔널 타입이기에 nil도 허용. 함수 사용시 아규먼트 자체를 생략하는 것도 가능
//
