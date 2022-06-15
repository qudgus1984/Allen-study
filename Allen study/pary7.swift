//
//  pary7.swift
//  Allen study
//
//  Created by 이병현 on 2022/06/15.
//

import Foundation

//print("Hello") // print라는 함수를 실행한다는 의미!
//// someFunction() // someFunction이라는 함수를 실행한다는 의미!
//// => 소문자로 시작하고, 뒤에 ()가 온다면 이제 이것이 함수의 실행이라는 것을 알아야 함!
//
//// 1) 정의
//func saySomething(name: String) { // (name: String)  => 파라미터
//    print("안녕하세요 \(name) 님")
//}
//
//// 2) 실행
//saySomething(name: "Cody")
//
//// 1) 정의
//func sayHello() -> String {
//    return "안녕하세요"
//}
//
//// 2) 실행
//sayHello() // 실행결과 : "안녕하세요"
//print(sayHello())
//
//// 1) 정의
//func plusFunction(a: Int, b: Int) -> Int {
//    var c = a + b
//    return c
//}
//
//// 2) 실행
//
//print(plusFunction(a: 5, b: 7))
//
//func plusFunction1(number1 a: Int, number2 b: Int) -> Int {
//    var c = a + b
//    return c
//}
//// 여기서 number1, number2는 아규먼트 레이블이고, a,b는 파라미터 이름임
//// 여기서 야규먼트 레이블을 생략하고 싶다면
//func plusFunction2(_ a: Int, _ b: Int) -> Int {
//    var c = a + b
//    return c
//}
//
//func plusFunction3(numbers: Int..., num: Int = 5) -> Int {
//// Int...은 정해지지 않은 여러개의 파라미터를 받을때 사용
//// num: Int = 5 => 기본값 (디폴트) 설정 가능
//    return 1
//}
//
///**==================================================================
// [6번 문제] 가변파라미터 예시
//  - 함수 만들어 보기: 여러개의 정해지지 않은 갯수의 정수를 받아서, 평균을 구하는 함수를 작성해 보세요.
//    (힌트: 함수의 이름은 누구봐도 알아볼 수 있게, 평균..이란 말이 들어가면 좋겠네요!)
// ===================================================================**/
//
//
//func makeAverage(nums: Int...) -> Double {
//    var sum = 0
//    for i in nums {
//        sum += i
//    }
//    return Double(sum) / Double(nums.count)
//}
//makeAverage(nums: 4, 2, 7)
//
//// 함수 오버로딩
//func introduce(name: String) {
//    print(name)
//}
//func introduce(name: String, age: Int) {
//    print("이름:\(name) 나이:\(age)")
//}
//func introduce(hobby: String) {
//    print("취미: \(hobby)")
//}
//
//introduce(name: "Cody")
//introduce(name: "Cody", age: 25)
//introduce(hobby: "옷구경")
//
//// 전부 사용 가능!
//// 즉 함수의 이름을 재사용 가능하다
//
//// 입출력 파라미터
//// 1) 정의
//var num1 = 10
//var num2 = 20
//func swapNumbers(a: inout Int, b: inout Int) {
//// 파라미터 타입 앞에 inout 키워드 추가 : 파라미터의 복사본이 전달된다는 것이 아니라 원본이 전달
//    var a1 = b
//    var b1 = a
//    print("a:\(a1) b:\(b1)")
//}
//
//// 2) 실행
//swapNumbers(a: &num1, b: &num2) // 변수 전달시, &기호를 꼭 붙여야 함(원본이 전달된다는 의미)
//
//// 1) 선언에 추가정보 제공
//@available(iOS 10.0, *)
//class MyClass {
//}
//
//// 2) 타입에 추가정보 제공
//
//func doSomething(completion: @escaping() -> ()) {
//}
//
//// 컴파일러에게 추가적인 정보를 알려주는 역할 (2가지 종류)
//
//// @discardableResult : 함수의 리턴값을 활용하지 않는 경우 사용
//
