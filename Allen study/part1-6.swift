//
//  part1-6.swift
//  Allen study
//
//  Created by 이병현 on 2022/06/15.
//

import Foundation

// switch 문의 응용
//var num = 12
//switch num {
//case let x where x % 2 == 0: // where 절을 사용해 조건을 붙이는 것.
//    print("짝수 숫자: \(x)")
//default:
//    print("홀수 숫자: \(num)")
//}
//
//// 와일드카드 패턴 : 생략을 위해 사용하는 (_)언더바
//for _ in 1...5 {
//    print("5번 반복")
//}
//
////사용 예시
//for num in (1...10).reversed() {
//    print(num)
//}
//
//for item in stride(from: 1, to: 15, by: 2) {
//    print(item)
//}
//
//// continue
//for num in 1...30 {
//    if num % 2 == 0 {
//        continue
//    }
//    print(num)
//}
//
//// break
//for num in 1...20 {
//    if num % 2 == 0 {
//        break
//    }
//    print(num)
//}
//
////tuple 예시
//let IntroduceMySelf = ("Cody", 25, "서울시")
//let IntroduceMySelf1 = (name: "Cody", age:25, adress:"서울시")
//
////튜플의 내부의 각각 데이터 접근
//IntroduceMySelf.0 // "Cody"
//IntroduceMySelf.1 // 25
//
//// 튜플의 각 요소를 상수화, 변수화 가능(바인딩)
//let (name, age, adress) = ("Cody", 25, "서울시")
//print(name) // "Cody"
//print(adress) // "서울시"
//
////튜플은 switch문과 자주 활용
//let iOS = ("Swift","5")
//
//switch iOS {
//case("Swift","5"):
//    print("스위프트 버전 5입니다.")
//case ("Swift","4"):
//    print("스위프트 버전 4입니다.")
//default:
//    break
//}
//
//// 이렇게도 사용 가능
//if iOS == ("Swift","5") {
//    print("스위프트 버전 5입니다.")
//}
//
//// 튜플을 사용하는 이유 : 함수는 원칙적으로 리턴값이 한개만 존재하기 때문에 여러개의 값을 변환할 수 없지만,
//// 어떤 묶음 값으로 변환하는 것은 가능
//
//func Example(name: String) -> (Int, String) {
//
//    return (7, name)
//}
//print(Example(name: "Cody"))
////이런 식으로 활용 가능하다는 의미!
