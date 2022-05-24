//
//  main.swift
//  Allen study
//
//  Created by 이병현 on 2022/05/18.
//

import Foundation

//// Allen if문 가위바위보 게임
//
//var comRsp = Int.random(in: 0...2)
//var rsp:Int = Int(readLine()!)!
//if  comRsp == rsp {
//    print("무승부입니다.")
//} else if (comRsp == 0 && rsp == 2) || (comRsp == 1 && rsp == 0) || (comRsp == 2 && rsp == 1) {
//    print("당신은 졌습니다.")
//} else {
//    print("당신이 이겼습니다.")
//}
//
//// 다르게 풀기
//if rsp == 0 {
//    if comRsp == 0 {
//        print("무승부입니다.")
//    } else if comRsp == 1 {
//        print("당신은 졌습니다.")
//    } else {
//        print("당신은 이겼습니다.")
//    }
//} else if rsp == 1 {
//    if comRsp == 0 {
//        print("무승부입니다.")
//    } else if comRsp == 1 {
//        print("당신은 졌습니다.")
//    } else {
//        print("당신은 이겼습니다.")
//    }
//}

// Allen 랜덩 빙고 게임 만들기

//var ranNum: Int = Int.random(in: 1...10)
//var numChoice: Int = Int(readLine()!)!
//if ranNum > numChoice {
//    print("Up")
//} else if ranNum < numChoice {
//    print("Down")
//} else {
//    print("Bingo")
//}

//var j = 1
//for _ in 1...10 {
//    print(j)
//    j += 1
//}
//
//let list = ["right", "left", "up", "down"]
//for i in list {
//    print(i)
//}

//var sum = 0
//var num = 1
//
//while num <= 50 {
//    print(num)
//    num += 1
//}

// 구구단 출력해보기

//for i in 2...9 {
//    for j in 1...9
//    {
//        print("\(i) x \(j) = \(i*j)")
//    }
//}

// 배수 구해서 출력해보기
//
//for i in 1...100 {
//    if (i % 3) == 0 {
//        print("3의 배수 발견: \(i)")
//    }
//}

// 다르게 풀어보기
//for i in 1...100 {
//    if i % 3 != 0 {
//        continue
//    }
//    print("3의 배수 발견: \(i)")
//}

// 반복문 활용, 논리를 구성해서 출력해보기
//var smile: String = "😄"
//for _ in 1...5 {
//    print("\(smile)")
//    smile += "😄"
//}

// 다르게 풀어보기
//for i in 1...5 {
//    for j in 1...5 {
//        if j <= i {
//            print("😄", terminator: "")
//        }
//    }
//    print()
//}

// 함수

//func loveHeart() {
//    for i in 1...9 {
//        for j in 1...9 {
//            if j <= i {
//                print("♥︎", terminator: "")
//            }
//        }
//        print()
//    }
//}
//
//loveHeart()

// 함수 input
//func doSomething(name: String) {
//    print("당신의 이름은 \(name)입니다.")
//}
//doSomething(name: "cody")
//
//// 함수 output
//func sayHello() -> String {
//    return "cody"
//}
//
//var nameIs = sayHello()
//print(nameIs+sayHello())
//
//
//func whatYourName() -> String {
//    let myName = "cody"
//    return myName
//}
//
//print(whatYourName())
//
//// 함수에 인풋과 아웃풋이 전부 있는 경우
//func plusFunction(a: Int, b: Int) -> Int {
//    let c = a + b
//    return c
//}
//
//print(plusFunction(a: 3, b: 5))


// 가변 파라미터 : 파라미터의 개수가 정해지지 않은 파라미터

//func plusAllNum(_ numbers: Double...) -> Double {
//    var total = 0.0
//    for n in numbers {
//        total += n
//    }
//    return total
//}
//
//print(plusAllNum(1.1, 2.5))

// 함수의 파라미터에 기본값 설정
//func tenPlus(first num1: Int, second num2: Int = 10) -> Int {
//    let result = num1 + num2
//    return result
//}
//print(tenPlus(first: 1))
//print(tenPlus(first: 1, second: 3))
//
//print("안녕하세요", "cody", separator: " 히히 ", terminator: "")
// print라는 것도 사실 함수고, 가변 파라미터임. 기본값이 쓰이기 때문에 사용한거지 separator과 terminator가 사용된 것

// 중첩 함수
//func winLose(win: Bool, value: Int) -> Int {
//    func canWin(input: Int)-> Int {
//        return input + 1
//    }
//    func canLose(input: Int) -> Int {
//        return input - 1
//    }
//
//    if win {
//        return canWin(input: value)
//    } else {
//        return canLose(input: value)
//    }
//}
//
//var value = 0
//
//print(winLose(win: false, value: value))

// 함수 내에서 swap 구현 불가능
//var num1 = 123 // 전역변수
//var num2 = 456 // 전역변수
//
//func swap(a: Int, b: Int) {
//
//}
//
//swap(a: num1, b: num2)

// 참조 -> 메모리 주소 전달

//var num1 = 123 // 전역변수
//var num2 = 456 // 전역변수
//
//func swapNumbers(a: inout Int, b: inout Int) {
//    var temp = a
//    a = b
//    b = temp
//}
//
//swapNumbers(a: &num1, b: &num2)
//print(num1, num2) // 456 123

// 함수 파트

// 가드문 (guard)
// if 문의 단점 - 여러 개 조건이 있을 때 가독성이 떨어짐 -> guard
//
//if true {
//    print("1")
//    if true {
//        print("2")
//        if true {
//            print("3")
//        }
//    }
//}
//
//func checkNumIf(password: String) -> Bool {
//    if password.count >= 6 {
//        return true
//    } else {
//        return false
//    }
//}
//
//
//func checkNumGuard(password: String) -> Bool {
//    guard password.count >= else { return false }
//
//
//    return true
//}

// gaurd문은 if문과 매우 비슷하지만, else문을 먼저 배치하는 것이라고 생각하면 됌.
// => 조건을 만족하는 경우 코드가 다음 줄로 넘어가서 계속 실행

// 문자열 중 한글자 랜덤으로 뽑아내는 함수

//func randomHangle(hangle: String) -> String {
//    return String(hangle.randomElement()!)
//}
//
//print(randomHangle(hangle: "cody"))
//

// 소수 판별하는 알고리즘

//var num = Int(readLine()!)!
//var isPrime:Bool = true
//
//for i in 2..<num {
//    if num % i == 0 {
//        isPrime = false
//        break
//    }
//}
//
//if isPrime {
//    print("소수입니다.")
//} else {
//    print("소수가 아닙니다.")
//}


// 소수 판별하는 함수
//func primeNumberChoice(num: Int) -> Bool {
//    for i in 2..<num {
//        if num % i == 0 {
//            return false
//        }
//    }
//    return true
//}
//
//if primeNumberChoice(num: 97) {
//    print("소수입니다.")
//} else {
//    print("소수가 아닙니다.")
//}

// 팩토리얼 함수 만들어보기

//var sum = 1
//func factorial(num: Int) -> Int {
//    for i in 1...num {
//        sum = sum * i
//    }
//    return sum
//}
//
//print(factorial(num: 8))

// 재귀함수로 팩토리얼 구하기
//func factorialF(num: Int) -> Int {
//    if num <= 1 {
//        return 1
//    }
//    return num * factorialF(num: num - 1)
//}
//
//print(factorialF(num: 5))

//var num1: Int? = 3
//var num2: Int? = 4
//print(num1!+num2!)

// 옵셔널 바인딩 함수

//func unwrapping(name: String?) {
//    guard let n = name else { return }
//    print(n)
//}
//
//unwrapping(name: "옵셔널 바인딩 함수")

// 코얼레싱
//var hi: String? = "하이"
//var hello = hi ?? "헬로우" // 기본값으로 제시
//print(hello) // hi에 값이 있다면 "하이" 를, hi에 값이 없다면 hello의 기본값인 헬로우 를 출력

// 옵셔널 바인딩 연습
//var num: Int? = 10
//
//if let y = num {
//    print(y)
//}
//
//func doPrinting(x: Int?) {
//    guard let z = x else { return }
//    print(z)
//}
//
//doPrinting(x: 9)
//
//func doString(st: String?) {
//    guard let ring = st else { return }
//    print(ring)
//}
//
//doString(st: "제바알")

// 옵셔널 타입의 응용
//
//func doSomePrint(with label: String, name: String? = nil) {
//    print("\(label) \(name)")
//}
//
//doSomePrint(with: "레이블")
//doSomePrint(with: "레이블", name: "cody")

// 위와 같이 name부분을 옵셔널로 해주고 nil값으로 미리 해두면, name 부분 생략 가능

// 배열

// 인덱스 : 순번, 번호표 라고 생각하기
//var numArray = [1, 2, 3, 4, 5] // 배열의 인덱스 시작은 0부터
// 한 개의 배열에는 같은 타입의 데이터만 담을 수 있음.
// 순서가 있기 때문에 값은 중복 가능
// 리터럴 : "5" => 문자열 리터럴 7 => 정수형 리터럴
//var intArray:[Int] = [1, 2, 3, 4] // 배열의 형태
//var stringArray:[String] = ["이것은", "문자열", "배열"]

// 배열의 타입 표기
//let strArray: Array<String> // 정식 문법
//let strArray1: [String] = [] // 간략화

// 빈 배열의 생성
//let emptyArray1: [Int] = []
//let emptyArray2 = Array<Int>()
//let emptyArray3 = [Int]()

//print(numArray.count)
//print(numArray.isEmpty)
//print(numArray.contains(1))
//print(numArray.randomElement())
//print(numArray.swapAt(0, 1))

// 서브스크립트 문법 (대괄호를 이용한 특별한 함수)
//print(numArray[0])
//
//var stringArray:[String] = ["cody", "hamang", "ddong"]
//stringArray[1] = "manju"
//print(stringArray[1])
//print(stringArray.first!) // 값이 옵셔널로 나옴 why? 값이 없을 수도 있기 때문에
//print(stringArray.endIndex) // 배열로 저장되는 메모리 값의 끝의 주소를 의미하기 때문에 3이나옴
//print(stringArray[stringArray.endIndex-1]) // 마지막 인덱스를 나타내기 위해선 위와 같이 해주어야함
//
//if let index = stringArray.firstIndex(of: "cody") {
//    print(index)
//    print(stringArray[index])
//}

// 삽입하기 insert
//var alpha: [String] = ["a", "b", "c"]
//alpha.insert("d", at: 3) // 배열 4번째에 d를 추가하라는 의미
//print(alpha) // ["a", "b", "c", "d"]
//alpha.insert(contentsOf: ["e","f"], at: 4) // 배열을 삽입한다는 의미.
//print(alpha) // ["a", "b", "c", "d", "e", "f"]
//
//// 교체하기 replace
//alpha[0] = "A"
//print(alpha) // ["A", "b", "c", "d", "e", "f"]
//alpha[1...3] = ["B", "C", "D"]
//print(alpha) // ["A", "B", "C", "D", "e", "f"]
//
//// 삭제하기 간단버전
//alpha[4...5] = []
//print(alpha) // ["A", "B", "C", "D"]
//
//// 교체하기 필수 문법
//alpha.replaceSubrange(0...3, with: ["a","b","c","d"])
//print(alpha) // ["a", "b", "c", "d"]
//
//// 추가하기 append
//alpha.append("e") // 끝에 추가한다
//print(alpha) // ["a", "b", "c", "d", "e"]
//alpha += ["f"] // append와 같은 의미
//print(alpha) // ["a", "b", "c", "d", "e", "f"]
//
//// 삭제하기 remove
//alpha.remove(at: 5) // 6번째에 있는 인덱스 제거
//print(alpha) // ["a", "b", "c", "d", "e"]
//alpha.removeSubrange(0...4) // 1~5번 째 인덱스 제거
//print(alpha) // []
//
//alpha.insert(contentsOf: ["a","b","c","d"], at: 0)
//print(alpha) // ["a", "b", "c", "d"]
//alpha.removeAll() // 모든 배열, 메모리 공간을 삭제함
//alpha.removeAll(keepingCapacity: true) // 모든 배열은 삭제하지만, 메모리 공간은 남겨둠.
//print(alpha) // []

// 정렬
//var nums = [1,2,3,1,1,4,5,6,7,8,5,9]
//
//nums.sort() // 배열을 직접 정렬. 배열을 리턴하지 않음
//print(nums) // [1, 1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9]
//
//var num = [1,2,3,1,1,4,5,6,7,8,5,9]
//print(num.sorted()) // [1, 1, 1, 2, 3, 4, 5, 5, 6, 7, 8, 9]
//print(num) // [1, 2, 3, 1, 1, 4, 5, 6, 7, 8, 5, 9]
//
//// sorted() : 배열을 변환하고 다시 원래 배열을 리턴해줌.
//
//var numreverse = [1,2,3,1,1,4,5,6,7,8,5,9]
//numreverse.reverse()
//print(numreverse) // [9, 5, 8, 7, 6, 5, 4, 1, 1, 3, 2, 1]
//
//var data = [[1,2],[3,4]]
//print(data[0][1]) // data 배열 첫번째의 2번째 인덱스에 접근
//
//for i in nums {
//    print(i)
//} // 1,21,1,2,3,4,5,5,6,7,8,9
//
//// enumerate : 열거하다
//nums = [10, 11, 12, 13]
//for tuple in nums.enumerated() {
//    print(tuple) // (offset: 0, element: 10),(offset: 1, element: 11)
//                 // (offset: 2, element: 12),(offset: 3, element: 13)
//    print("\(tuple.offset)-\(tuple.element)")
//}
// 즉, named 튜플 형태로 출력. 인덱스 번호와 값 둘다 출력

// 딕셔너리
//
//var dic = ["A": "apple", "B": "banana", "C": "cap"]
//print(dic)
//
//if let tuple = dic.randomElement() {
//    print(tuple)
//}
//
//print(dic["B"]) // 옵셔널로 반환 => nil의 가능성이 있기 때문
//
//if let b = dic["B"] { // 따라서 위와 같이 옵셔널 바인딩을 해주어야 함.
//    print(b)
//}
//
//// 딕셔널는 값만 따로 검색하는 방법은 존재하지 않음.
//
//print(dic.keys) // 키 값만
//print(dic.values) // 벨류 값만
//print(dic.keys.sorted()) // 키 값을 배열로 변환시켜줌.
//print(dic.values.sorted()) // 벨류 값을 배열로 변환시켜줌.
//
//for key in dic.keys.sorted() { // 이렇게 키값을 배열로 사용해 반복문에서 사용할 수 있음.
//    print(key)
//}
//
//var words:[String: String]
//words = [:]
//words["A"] = "Apple" // 키가 없을땐 추가
//print(words)
//words["A"] = "Ace" // 키값이 존재한다면 변환
//print(words)
//
//words.updateValue("City", forKey: "C")
//print(words)
//// 삭제
//words.removeValue(forKey: "C")
//print(words)
//words["A"] = nil
//print(words)
//
//// 딕셔너리 비교
//let a = ["B":"boy","A":"Auto"]
//let b = ["A":"Auto","B":"boy"]
//
//print(a==b) // true
//// 딕셔너리는 순서가 없기 때문에 위 a,b가 같다고 할 수 있음.
//
//// 딕셔너리 활용
//var dict1 = [String: [String]]()
//dict1["arr1"] = ["A","B","C"]
//print(dict1) //["arr1": ["A", "B", "C"]]
//
//// 반복문과 결합
//
//let dict = ["A":"Apple","B":"Banana","C":"City"]
//for (key,value) in dict {
//    print("\(key):\(value)")
//}

// 집합 Set

//var set: Set = [1,1,2,2,3,3,3]
//print(set) // [2, 3, 1] => 중복 허용 x
//
//// 빈 Set 생성
//let emptySet: Set<Int> = []
//print(emptySet)
//
//// 집합은 순서도 없고 키,벨류 값도 없기 때문에 서브스크립트 관련 문법이 없음
//// ex) Set[0] => error!
//set.update(with: 4) // 4 추가
//print(set) //[2, 4, 1, 3]
//
//// 합집합 / 교집합 / 차집합 / 대칭차집합
//// union / intersetion / subtracting / ssymmetricDifferent
//var a: Set = [1,2]
//var b: Set = [2,3]
//var unionSet = a.union(b)
//print(unionSet)



//###########################################################

// 열거형

//enum weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//    case saturday
//    case sunday
//}
//// 열거형의 사용 : 위처럼 요일, 방향, 성별, 가위바위보 .... 등
//
//enum school {
//    case elementary
//    case middle
//    case high
//    case university
//}
//
//var School = school.elementary // 여기서 school은 타입 자체임.
//
//var today: weekday = .sunday
//
//if today == .sunday {
//    print("오늘은 일요일입니다.")
//}
//
//let setu: Set<Int> = [1,2,3]
//print(setu)
//
//enum Optional {
//    case some(Int)
//    case none
//}


// 열거형의 활용
//enum LoginProvider: String {
//    case email
//    case facebook
//    case google
//}
//
//let userLogin = LoginProvider.facebook
//
//switch userLogin {
//case.email:
//    print("이메일 로그인")
//case.facebook:
//    print("페이스북 로그인")
//case.google:
//    print("구글 로그인")
//
//    if LoginProvider.email == userLogin {
//        print("userLogin")
//    }
//}

// @nuknown 키워드 열거형에 있는 케이스들을 따로따로 다 switch문에서 다루어야만 경고창이 뜨지 않음.

// 열거형의 활용
//enum LoginProvider: String {
//    case email
//    case facebook
//    case google
//    case kakaotalk
//}
//
//let userLogin = LoginProvider.facebook
//
//switch userLogin { // 경고창이 뜸 => unknown 코드 덕!
//case.email:
//    print("이메일 로그인")
//case.facebook:
//    print("페이스북 로그인")
//case.google:
//    print("구글 로그인")
//@unknown default:
//    print("그 외의 모든 경우")
//
//    if LoginProvider.email == userLogin {
//        print("userLogin")
//    }
//}

//class Dog {
//    var name = "강아지"
//    var weight = 0.0
//
//    func sit() {
//        print("\(name)가 앉았습니다.")
//    }
//}
//
//var bori = Dog()
//bori.name = "보리"
//bori.weight = 15.0
//print(bori.name)
//print(bori.weight)
//bori.sit()
//
//var choco = Dog()
//choco.sit()
//choco.name = "초코"
//choco.weight = 7
//print(choco.name)
//print(choco.weight)
//choco.sit()

//struct Bird {
//    var name = "새"
//    var weight = 0.0
//
//    func fly() {
//        print("\(name)가 날아갑니다.")
//    }
//}
//
//var aBird = Bird()
//aBird.name = "딱따구리"
//print(aBird.name)
//aBird.fly()
//
//var bBird = Bird()
//bBird.name = "비둘기"
//print(bBird.name)
//bBird.fly()

//class person {
//    var name = "사람"
//}
//
//struct animal {
//    var name = "동물"
//}
//
//var p = person()
//p.name = "혜리"
//print(p.name)
//
//var a = animal()
//print(a.name)
//
//var p2 = p // 메모리주소가 동일함
//p2.name = "수진"
//print(p2.name)
//
//var a2 = a // 값만 복사
//a.name = "강아지"
//print(a.name)
//print(a2.name) // 각각 다른 데이터
//
//let pclass = person()
//let astruct = animal()
//
//pclass.name = "사람1"
//print(pclass.name)
//
//// astruct.name = "동물1" // 오류
//// print(astruct.name)

// 이니셜라이저

//class Dog {
//    var name: String
//    var weight: Double
//
//    init(name: String, weight: Double) { // 생성자
//        self.name = name // self : 인스턴스, 즉 실제 데이터를 의미
//        self.weight = weight
//    }
//}
//
//var bori = Dog(name: "보리", weight: 15.0)
//print(bori.name)
//print(bori.weight)

// 도서관리 모델 설계
//
//class Book {
//    var name: String
//    var price: Int
//    var company: String
//    var author: String
//    var pages: Int
//
//    init(name: String, price: Int, company: String, author: String, pages: Int) {
//        self.name = name
//        self.price = price
//        self.company = company
//        self.author = author
//        self.pages = pages
//    }
//    func detail() {
//        print("책 이름 :\(self.name)")
//        print("가격 :\(self.price)")
//        print("출판사 :\(self.company)")
//        print("저자 :\(self.author)")
//        print("페이지수 :\(self.pages)")
//
//    }
//
//}
//
//var book1 = Book(name: "스위프트", price: 30000, company: "애플", author: "잡스", pages: 300)
//var book2 = Book(name: "정의란무엇인가", price: 18000, company: "정의", author: "다이아몬드 스튜어드", pages: 400)
//
//book1.detail()
//book2.detail()

// 구조체 / 클래스 속성

// 저장 속성(Stored Properties) : 값이 저장되는 일반적인 속성을 저장속성이라고 함
//
//struct Bird {
//    var name: String = "새"   // 저장속성
//    var weight: Double = 0.0  // 저장속성. 구조체나 클래스 상관 없이 둘다 가짐.
//}
//
//var bird1 = Bird()
//print(bird1.name)
//print(bird1.weight)
//
//// 지연 저장 속성 (Lazy Stored Properties)
//
//func doSomething() -> Double {
//    return 0.0
//}
//struct Person {
//    var name: String = "Cody"
//    lazy var weight: Double = doSomething() // 지연 저장 속성
//    // 메모리 공간을 만들지 않음
//    // 기본값을 반드시 설정해주어야 함.
//}
//
//var cody = Person()
//cody.weight = 65.0 // => 접근하는 순간 메모리 공간을 새로 만들어냄.
//print(cody.weight)
//
//// 지연 저장 속성을 사용하는 경우
//// 1) 메모리 공간을 많이 사용하는 이미지 등의 속성을 저장할 때
//// 2) 다른 저장 속성을 이용해야 할 때. a를 가지고 b를 구해야 할 때
//
//// 계산 속성
//// 함수 복습부터!
//func addTwoNumbers(_ a: Int, _ b: Int) -> Int {
//    var c = a + b
//    return c
//}
//
//var x = addTwoNumbers(3, 4)
//print(x)

//struct Book {
//    var name: String
//    var price: Int
//
//    init(name: String, price: Int) {
//        self.name = name
//        self.price = price
//
//    }
//
//    func explain() {
//        print("책 이름: \(name)")
//        print("가격 : \(price)원")
//    }
//}
//
//var book1 = Book(name: "Justice", price: 18000)
//book1.explain()
//
//print(book1.explain())


// 계산속성

//class Person {
//    var birth: Int = 0
//
//    var age: Int {
//        get {
//            return 2021 - birth
//        }
////        set(age) { // age를 다시 세팅해주는 역할
////            self.birth = 2021 - age
////        } // 계산 속성. 실질적으로 메서드임.
//        set { // 이렇게 파라미터 생략 가능. 대신 파라미터 위치에 newValue로 변경해주어야함!
//            self.birth = 2021 - newValue
//        }
//    }
    
//    func getAge() -> Int {
//        return 2021 - birth
//    }
//
//    func setAge(_ age: Int) {
//        self.birth = 2021 - age
//    }
//}

//var p1 = Person()
//p1.birth = 1998
//print(p1.birth)
//print(p1.age) // get
//p1.age = 20 // set
//print(p1.age)

//class Person {
//    var name: String = "사람"
//    var height: Double = 175.0
//    var weight: Double = 65.0
//
//    func calculateBMI() -> Double {
//        let bmi = weight / (height * height) * 10000
//        return bmi
//    }
//}
//
//let p = Person()
//p.height = 175
//p.weight = 65
//
//print(p.calculateBMI())

// 위 예제를 계산 속성으로 바꾸어보기

//class Person {
//    var name: String = "사람"
//    var height: Double = 175.0
//    var weight: Double = 65.0
//
//    var bmi: Double {
//        get {
//            let bmi = weight / (height * height) * 10000
//            return bmi
//        }
//        set {
//            weight = newValue * height * height / 10000
//        }
//    }
//}
//
//let p = Person()
//p.height = 175
//p.weight = 65
//p.bmi = 19
//print(p.weight) // set을 이용하여 bmi지수가 19일때의 몸무게 => 58.1875


// 타입 속성

//class Dog {
//    static let species: String = "Dog"
//    var name: String
//    var weight: Double
//
//    init(name: String, weight: Double) {
//        self.name = name
//        self.weight = weight
//    }
//}
//
//let dog = Dog(name: "초코", weight: 15.0)
//print(dog.name)
//print(dog.weight)
//
//print(Dog.species) // 타입으로 접근해야 함.

// 저장 타입 속성
//class Circle {
//    // 저장 타입 속성 (값이 항상 있어야 함.)
//    static let pi: Double = 3.14
//    static var count: Int = 0
//
//    // 저장 속성
//    var radius: Double // 반지름
//
//    var diameter: Double { // 지름
//        get {
//            return radius * 2
//        }
//        set {
//            radius = newValue / 2
//        }
//
//    }
//
//    // 생성자
//    init(radius: Double) {
//        self.radius = radius
//        Circle.count += 1
//    }
//}
//
//print(Circle.count)
//
//var circle1 = Circle(radius: 2)
//print(circle1.radius)
//print(circle1.diameter)
//circle1.radius = 3
//print(circle1.diameter)
//print(Circle.count)
//
//print(Circle(radius: 2).diameter) // 찍어내면 사라짐
//
//print(circle1.diameter * Circle.pi) // 저장 타입 속성 사용
//print(Circle.count)
//var circle2 = Circle(radius: 3)
//print(Circle.count) // 인스턴스를 +1개 찍어냈다.


// 실제 사용 예시
//print(Double.pi) // 파이 값 pi를 옵션으로 보면, static var pi: Double { get }
//print(Int.max) // Int 타입의 최대 숫자
//print(Int.min) // Int 타입의 최소 숫자
// 애플에서 미리 구현해놓은 타입 저장 속성임!

// 계산 타입 속성

//class Circle {
//    // 저장 타입 속성 (값이 항상 있어야 함.)
//    static let pi: Double = 3.14
//    static var count: Int = 0
//
//    // 계산 타입 속성
//    static var multiPi: Double {
//        return Circle.pi * 2
//    }
//
//    // 저장 속성
//    var radius: Double // 반지름
//
//    // 생성자
//    init(radius: Double) {
//        self.radius = radius
//    }
//}
//
//let b = Circle.multiPi
//print(b)

// 속성 감시자 : 저장 속성을 감시하는 속성

//class Profile {
//    var name: String = "이름"
//
//    var statusMessage: String = "기본 상태메세지" {
//        willSet { // 바뀔 값이 파라미터로 전달
//            print("메세지가 \(statusMessage)에서 \(newValue)로 변경되었습니다.")
//            print("상태메세지 업데이트 준비")
//        }
//        didSet { // 바뀌기 전의 과거값이 파라미터로 전달
//            print("메세지가 \(oldValue)에서 \(statusMessage)로 이미 변경되었습니다.")
//            print("상태메세지 업데이트 완료")
//
//        }
//    }
//    init(message: String) {
//        self.statusMessage = message
//    }
//}
//
//let p = Profile(message: "기본 상태메세지")
//
//p.statusMessage = "행복해"

// 타입메서드
//print(Int.random(in: 1...100)) // 타입메서드임!

// 서브스크립트 구현

//class someData {
//    var datas = ["cody", "hamang", "dong"]
//    subscript(index: Int) -> String {
//        get {
//            return datas[index]
//        }
//        set {
//            datas[index] = newValue
//        }
//    }
//}
//
//var data = someData()
//print(data.datas[2])
//data[0] = "coody"
//print(data[0])

// 싱글톤 패턴 : 앱 구현시 유일하게 한개만 존재하는 객체가 필요한 경우 사용

//class Singleton {
//    static let shared = Singleton() // 자신의 객체를 생성해서 객체변수에 할당
//    var userInfoId = 12345
//    private init() { // 찍어낼 수 없게 만드는 것
//    }
//}
//
//
//let object = Singleton.shared
//print(object.userInfoId)
//
//let object2 = Singleton.shared
//object2.userInfoId = 12346
//print(object.userInfoId)

//let object3 = Singleton()

// 상속 : 저장속성을 추가하는 기능
//class Person {
//    var id = 0
//    var name = "이름"
//    var email = "@naver.com"
//}
//
//class Student: Person {
//    var studentId = 0
//}
//
//class Undergraduate: Student {
//    var major = "전공"
//}
//
//var cody = Undergraduate()
//print(cody.id)
//print(cody.studentId)
//print(cody.major)

// 재정의 (overriding)

//class Aclass {
//    func doSomething() {
//        print("Do something")
//    }
//}
//
//class Bclass: Aclass {
//    override func doSomething() {
//        super.doSomething() // 상위클래스에 있는 doSomething()을 실행
//        print("Something to do")
//    }
//}
//
//var b = Bclass()
//b.doSomething()

// 재정의 예시

//class Vehicle {
//    var currentSpeed = 0.0
//
//    var halfSpeed: Double {
//        get {
//            return currentSpeed / 2
//        }
//        set {
//            currentSpeed = newValue * 2
//        }
//    }
//}
//// 저장 속성을 계산 속성으로 재정의
//class Bicycle: Vehicle {
//    var hasBasket = false
//
//    override var currentSpeed: Double {
//        get {
//            return super.currentSpeed
//        }
//        set {
//            super.currentSpeed = newValue
//        }
//    }
//}
// 저장 속성 -> 속성감시자를 추가하는 재정의도 가능
// 계산 속성 재정의 가능
// 상위에 있는 계산 속성을 재정의하면서 속성 감시자 추가 가능
// 서브스크립트도 결국 메서드이기 때문에 재정의 가능
//class Hello {
//    var hi = "안녕"
//}
//class Hi: Hello {
//    var hii = "안녕하세요"
//}
//class Bye: Hi {
//    func bye(){
//        print("잘가요")
//    }
//}
//class Byebye: Bye {
//    override func bye() {
//        super.bye()
//        print("이젠 보내줄게요")
//    }
//}

//var minju = Int(readLine()!)!
//var univercity: Int
//
//univercity = Int.random(in: 1...6)
//if univercity == 1 {
//    print("한양대학교")
//} else if univercity == 2 {
//    print("건국대학교")
//} else if univercity == 3 {
//    print("홍익대학교")
//} else if univercity == 4 {
//    print("숭실대학교")
//} else if univercity == 5 {
//    print("경희대학교")
//} else if univercity == 6 {
//    print("중앙대학교")
//}

//// 이니셜라이져 자동 설정
//class Color {
//    let red: Double
//    let blue: Double
//    let green: Double
//
//    // 자동 기본값 설정
//    init() {
//        red = 0.0
//        blue = 0.0
//        green = 0.0
//    }
//}
//
//// 구조체는 멤버와이즈 이니셜라이저 자동 제공
//
//struct Color1 {
//    var red: Double
//    var green: Double
//    var blue: Double
//}
//
//var puple = Color1(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
//// 이렇게 자동 구성
//
//struct Color {
//    let red: Double
//    let blue: Double
//    let green: Double
//
//    init() {
//        self.init(red: 0.0, green: 0.0, blue: 0.0)
//    }
//    init(red: Double, green: Double, blue: Double) {
//        self.green = green
//        self.blue = blue
//        self.red = red
//    }
//}
//// 클래스에 위와같이 구현하기 위해선 편의 생성자(convenience)를 설정해주어야 함
//class Color1 {
//    let red: Double
//    let blue: Double
//    let green: Double
//
//    convenience init() {
//        self.init(red: 0.0, green: 0.0, blue: 0.0)
//    }
//    init(red: Double, green: Double, blue: Double) {
//        self.green = green
//        self.blue = blue
//        self.red = red
//    }
//}

//class Person {
//    var id = 0
//    var name = "이름"
//    var email = "qudgus1984@naver.com"
//}
//
//class Student: Person {
//    var studentId = 1
//}
//
//class Undergraduate: Student {
//    var major = "전공"
//}
//
//let person1 = Person()
//person1.id
//person1.name
//person1.email
//
//let student1 = Student()
//student1.id
//student1.name
//student1.email
//student1.studentId
//
//let undergraduate1 = Undergraduate()
//undergraduate1.id
//undergraduate1.name
//undergraduate1.email
//undergraduate1.studentId
//undergraduate1.major
//
//// is 연산자 => 타입을 체크하는 연산자
//
//print(person1 is Person) // Bool 타입으로 알려줌 true
//print(person1 is Student) // false
//print(student1 is Person) // 상속받기때문에 true
//print(student1 is Student) // 당연히 true
//
//
//// is 연산자 활용
//let person2 = Person()
//let student2 = Student()
//let undergraduate2 = Undergraduate()
//
//let people = [person1, person2, student1, student2, undergraduate1, undergraduate2]
//
//var studentNumber = 0
//
//for someOne in people {
//    if someOne is Student {
//        studentNumber += 1
//    }
//}
//
//print(studentNumber)


// as 연산자


//class Person {
//    var id = 0
//    var name = "이름"
//    var email = "qudgus1984@naver.com"
//}
//
//class Student: Person {
//    var studentId = 1
//}
//
//class Undergraduate: Student {
//    var major = "전공"
//}
//let person1 = Person()
//
//
//let student1 = Student()
//
//
//let undergraduate1 = Undergraduate()
//
//// 업캐스팅, 다운캐스팅
//let person: Person = Undergraduate()
//person.id
//person.name
//person.name
// person.studentId // error
// person.major // error

//let ppp = person as? Undergraduate // 다운캐스팅
//// person이라는 인스턴스를 Undergraduate 타입으로 변환하여 ppp라는 변수에 담는 것
//// 이때 ppp타입을 확인해보면 Undergraduate? 로 나타남.
//if let pp = ppp {
//    pp.id
//} // if let 바인딩을 통해 옵셔널을 벗겨주어야 함.

// 또는
//if let ppp = person as? Undergraduate {
//    print(ppp.studentId)
//}

//let ppp = person as! Undergraduate // 옵셔널을 벗기기 쉬움. but 오류시 런타임 오류
//
//let undergraduate5: Undergraduate = Undergraduate()


//let str: String = "Hello"
//let otherStr = str as NSString
// 이때 otherStr의 타입은 NSString

// 타입과 당형성

class Person {
    var id = 0
    var name = "이름"
    var email = "qudgus1984@naver.com"
    
    func walk() {
        print("사람이 걷는다")
    }
}

class Student: Person {
    var studentId = 1
    
    override func walk() {
        print("학생이 걷는다")
    }
    func study() {
        print("학생이 공부한다")
    }
}

class Undergraduate: Student {
    var major = "전공"
    
    override func walk() {
        print("대학생이 걷는다")
    }
    override func study() {
        print("대학생이 공부한다")
    }
    func party() {
        print("대학생이 파티를 한다")
    }
}

let person1 = Person()
let student1 = Student()
let undergraduate1 = Undergraduate()

