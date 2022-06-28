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

//class Person {
//    var id = 0
//    var name = "이름"
//    var email = "qudgus1984@naver.com"
//
//    func walk() {
//        print("사람이 걷는다")
//    }
//}
//
//class Student: Person {
//    var studentId = 1
//
//    override func walk() {
//        print("학생이 걷는다")
//    }
//    func study() {
//        print("학생이 공부한다")
//    }
//}
//
//class Undergraduate: Student {
//    var major = "전공"
//
//    override func walk() {
//        print("대학생이 걷는다")
//    }
//    override func study() {
//        print("대학생이 공부한다")
//    }
//    func party() {
//        print("대학생이 파티를 한다")
//    }
//}
//
////let person1 = Person()
////person1.walk() // 사람이 걷는다
////// func walk() 에만 접근 가능
////let student1: Person = Student()
////// func walk() 에만 접근 가능
////student1.walk() // 학생이 걷는다라 고 나옴 -> 메모리 측면
////let undergraduate1: Person = Undergraduate()
////undergraduate1.walk() // 대학생이 걷는다
//
//
//let people: [Person] = [Person(), Student(), Undergraduate()]
//
//for person in people {
//    person.walk()
//}
// Any
//var some: Any = "Swift"
//some = 10
//var some1 = some as! Int
//print(some1)

//class Person {
//    var name = "이름"
//    var age = 10
//}
//
//class Superman {
//    var name = "이름"
//    var weight = 100
//}
//
//let array: [Any] = [5, "안녕", 3.5, Person(), Superman() ] // Any 타입을 사용해서 다양한 타입을 담을 수 있음
//
//print((array[1] as! String).count) // 2
//
//// AnyObject 타입 => 클래스의 오브젝트만을 담을 수 있는 타입
//
//let objArray: [AnyObject] = [Person(), Superman(), NSString()]
//
//print((objArray[0] as! Person).name) // 이름

// 확장

//// 확장의 장점
//
//extension Int {
//    var squared: Int {
//        return self * self
//    }
//}
//
//func squared(num: Int) -> Int {
//    return num * num
//}
//
//print(5.squared)
//print(squared(num: 5)) // 이렇게도 구현 가능하지만 확장보다 불편함
//
//extension Int {
//    static func printNumbersFrom1to5() {
//        for i in 1...5 {
//            print(i)
//        }
//    }
//}
//
//Int.printNumbersFrom1to5()
//
//extension Int {
//    mutating func square() {
//        self = self * self
//    }
//}

// 프로토콜 : 약속 / 규약 => 자격증, 리모콘 같은 의미

//
//protocol SomeProtocol {
//    func flyPiano()
//}
//
//struct MyStruct: SomeProtocol {
//    func flyPiano() {
//        print("피아노를 친다")
//    }
//}
//
//var grandPiano = MyStruct()
//grandPiano.flyPiano()
//
//
//// 프로토콜의 정의
//protocol MyProtocol {
//    func doSomething() -> Int
//}
//
//class MyClass: MyProtocol {
//    func doSomething() -> Int {
//        return 7
//    }
//}
//
//protocol RemoteMouse {
//    var id: String { get }
//
//    var name: String { get set }
//
//    static var type: String { get set }
//}
//
//struct TV: RemoteMouse {
//    var id: String {
//        get {
//            return "\(id)임"
//        } set {
//            var id = "Cody"
//        }
//    }
//    var name: String = "삼성티비"
//    static var type: String = "리모콘"
//}
//
//protocol RandomNumber {
//    static func reset()
//    func random() -> Int
//}
//
//class Number: RandomNumber {
//    static func reset() {
//        print("다시 셋팅")
//    }
//
//    func random() -> Int {
//        return Int.random(in: 1...100)
//    }
//}
//
//var x = Number()
//print(x.random())
//Number.reset()
//
//protocol DataList {
//    subscript(idx: Int) -> Int { get }
//}
//
//struct DataStructure: DataList {
//
//    subscript(idx: Int) -> Int {
//        return 0
//    }
//}
//
//var x = DataStructure()
//
//protocol DataSet {
//    subscript(data: String) -> String { get }
//}
//
//class DataClass: DataSet {
//    subscript(data: String) -> String {
//        return "데이터"
//    }
//}
//
//var dataBase = DataClass()
//dataBase["안녕"]
//print(dataBase)

// 프로토콜은 타입
//protocol Remote {
//    func turnOn()
//    func turnOff()
//}
//
//class TV: Remote {
//    func turnOn() {
//        print("TV켜기")
//    }
//    func turnOff() {
//        print("TV끄기")
//    }
//}
//
//struct SetTopBox: Remote {
//    func turnOn() {
//        print("셋톱박스켜기")
//    }
//    func turnOff() {
//        print("셋톱박스끄기")
//    }
//    func doNetflix() {
//        print("넷플릭스 켜기")
//    }
//}
//
//let tv: Remote = TV() // protocol 타입으로 선언 가능
//tv.turnOn()
//tv.turnOff()
//
//let sbox: Remote = SetTopBox()
//sbox.turnOn()
//sbox.turnOff()
//(sbox as? SetTopBox)?.doNetflix() // 다운캐스팅 사용하여 SetTopBox 함수 사용
//
//// 프로토콜 타입 취급의 장점
//let electronic: [Remote] = [tv, sbox] // 프로토콜 형식으로 담겨있음
//
//print(tv is Remote)
//print(sbox is Remote) // is 로 특정 타입이 플토콜을 채택하고 있는지 확인


// 프로토콜 상속
//protocol Remote {
//    func turnOn()
//    func turnOff()
//}
//
//protocol AirConRemote {
//    func Up()
//    func Down()
//}
//
//protocol SuperRemoteProtocol: Remote, AirConRemote {
//    // 프로토콜끼리 상속 구조를 만드는 것이 가능
//    func doSomething()
//}
//
//class HomePot: SuperRemoteProtocol {
//    func turnOn() {
//        print("킨다")
//    }
//    func turnOff() {
//        print("끈다")
//    }
//    func Up() {
//        print("올린다")
//    }
//    func Down() {
//        print("내린다")
//    }
//    func doSomething() {
//        print("그이외")
//    }
//}
//
//// 선택적 요구사항
//
//// 어트리뷰트
//// @available, @objc, @IBOutlet, @IBAction 등등
//
//// 실제 예시
//@available(iOS 13.0, macOS 10.12, *) // 선언에 추가정보 제공, 타입에 추가정보 제공
//class SomeType {
//}

// 프로토콜 확장

//protocol Remote {
//    func turnOn()
//    func turnOff()
//}
//
//extension Remote {
//    func turnOn() { print("리모콘 켜기")}
//    func turnOff() {print("리모콘 끄기")}
//
//    // 메모리 주소에 저장하는 것
//    func doAnotherAction() {
//        print("리모콘 또 다른 동작 수행")
//    }
//}
//
//class TV1: Remote {
//    func turnOn() { print("TV 켜기")}
////    func turnOff() {print("리모콘 끄기")}
//    func doAnotherAction() {print("tv 또 다른 동작 수행")}
//}
//var tv7 = TV1()
//tv7.turnOn() // class에서 요구한 메서드 먼저 적용
//tv7.turnOff() // class에서 구현하지 않았을 때는 확장에서 설정한 기본값 제공
//
//tv7.doAnotherAction() // 요구사항 메서드 x - 테이블 만들지 않음. 타입에 따른 선택
//
//var tv8: Remote = TV1()
//tv8.turnOn() // class에서 요구한 메서드 먼저 적용
//tv8.turnOff() // class에서 구현하지 않았을 때는 확장에서 설정한 기본값 제공
//
//tv8.doAnotherAction() // 요구사항 메서드 x - 테이블 만들지 않음. 타입에 따른 선택

// 프로토콜 지향 프로그래밍

//class Ipad: Remote {
//    func turnOn() { print("아이패드 켜기") }
//    func doAnotherAction() { print("아이패드 다른 동작") }
//}

//let ipad: Ipad = Ipad() // 클래스를 받음
//ipad.turnOn()   // 클래스 - V테이블
//ipad.turnOff()  // 클래스 - V테이블
//
//ipad.doAnotherAction() // 클래스 - V테이블
//
//let ipad2: Remote = Ipad() // 프로토콜 타입을 받음
//ipad2.turnOn()  // 프로토콜 - w테이블
//ipad2.turnOff() // 프로토콜 - w테이블

// 프로토콜 - w테이블 : Direct 여기에 메모리 주소를 삽입하는 것. 직접 메모리 주소 삽입
//ipad2.doAnotherAction() // 여기서 프로토콜 타입을 받는지, 클래스를 받는지에 따라 달라짐

//struct SmartPhone: Remote {
//    func turnOn() {print("스마트폰 켜기")}
//    func doAnotherAction() { print("스마트폰 다른 동작")}
//}
//
//var iphone: SmartPhone = SmartPhone()
//iphone.turnOn()  // 구조체 - Direct (직접 메서드 주소 삽입)
//iphone.turnOff() // 구조체 - Direct (직접 메서드 주소 삽입)
//iphone.doAnotherAction() // 구조체 - Direct (직접 메서드 주소 삽입)
//
////스마트폰 켜기
////리모콘 끄기
////스마트폰 다른 동작
//
//// 프로토콜 타입 저장 : witness 테이블
//var iphone2: Remote = SmartPhone()
//iphone2.turnOn()   // 프로토콜 - w테이블
//iphone2.turnOff()  // 프로토콜 - w테이블
//iphone2.doAnotherAction()// 프로토콜 - Direct (직접 메서드 주소 삽입)

//스마트폰 켜기
//리모콘 끄기
//리모콘 또 다른 동작 수행

// 프로토콜 확장 제한
//
//protocol Remote {
//    func turnOn()
//    func turnOff()
//}
//
//extension Remote {
//    func turnOn() { print("리모콘 켜기")}
//    func turnOff() {print("리모콘 끄기")}
//
//    // 메모리 주소에 저장하는 것
//    func doAnotherAction() {
//        print("리모콘 또 다른 동작 수행")
//    }
//}
//protocol Bluetooth {
//    func blueOn()
//    func blueOff()
//}
//
//// 본 확장을 제한시키는 것 가능. Remote를 채택한 경우에만 Bluetooth 확장을 적용시키는 것을 의미
//extension Bluetooth where Self: Remote { // 대문자 Self는 해당 타입 자기자신을 의미
//    func blueOn() {print("블루투스 켜기")}
//    func blueOff() {print("블루투스 끄기")}
//
//}
//
//class SmartPhone: Remote, Bluetooth { // 여기서 Remote를 채택하지 않으면 Bluetooth 확장이 적용되지 않음
//
//}
//
//let sphone = SmartPhone()
//sphone.turnOn()
//sphone.turnOff()
//sphone.blueOn()
//sphone.blueOff()
//sphone.doAnotherAction()
//
//class OldPhone: Remote, Bluetooth {
//    func turnOn() { print("블루투스 켜기")}
//    func turnOff() { print("블루투스 끄기")}
//}
//
//let ipot = OldPhone()
//ipot.turnOn()
//ipot.turnOff()
//ipot.blueOn()
//ipot.blueOff()
//ipot.doAnotherAction()
//
//// 오류 발생!

// 메서드 디스패치
//struct MyStruct {
//    func method1() {print("Struct - Direct method1")}
//    // cpu에서 메모리 주소 영역 90~99만큼 차지한다고 가정
//    func method2() {print("Struct - Direct method2")}
//    // cpu에서 메모리 주소 영역 100~109만큼 차지한다고 가정
//}
//
//let myStruct = MyStruct() // 위 실행이 1000번째 줄이라고 가정
//myStruct.method1() // 메모리 주소 90으로 들어감 1000번째 -> 90번째로 이동
//myStruct.method2() // 메모리 주소 100으로 들어감 1000번째 -> 100번째로 이동
//
//
//// 버츄얼 테이블 디스팿
//class FirstClass {
//    func method1() {print("Class - Table method1")}
//    // 메모리 주소 영역에 110~119만큼 차지한다고 가정
//    func method2() {print("Class - Table method2")}
//    // 메모리 주소 영역에 120~129만큼 차지한다고 가정
//}
//
//// Data 영역 테이블
//// ===========================
//// 110
//// 120
//// ===========================
//
//// 자식 클래스에서 테이블을 따로 보유
//class SecondClass: FirstClass {
//    override func method2() { print("Class - Table method2-2")} // 130~139
//    func method3() {print("Class - Table method3")} // 140~149
//}
//
//// Data 영역 테이블 - 배열로 저장
//// ===========================
//// 110
//// 130
//// 140
//// 실제 [110, 130, 140] 이러한 형태로 저장
//// ===========================
//
//let first = FirstClass()
//first.method1()
//first.method2()
//
//let second = SecondClass()
//second.method1()
//second.method2() // 상속 - 재정의
//second.method3()
//
//// 메세지 디스패치 : @objc dynamic 을 붙이면 옵젝 C 형태로 변환되어 메서드 디스패치 방식으로 구현 가능
//class ParentClass {
//    @objc dynamic func method1() {(print("Class - Message method1"))}
//}
//
//// 프로토콜 - Witness Table
//
//protocol MyProtocol {
//    func method1()
//    func method2()
//}
//
//extension MyProtocol {
//    func method1() {print("Protocol - Withness Table method1")}
//    func method2() {print("Protocol - Withness Table method2")}
//}
//
//class ThirdClass: MyProtocol {
//    func method1() {print("Class - Virtual Table method1")}
//    func method2() {print("Class - Virtual Table method2")}
//    func anotherMethod() {print("Class - Virtual Table method3")}
//}
// =================================
// [Class Virtual Table]
// func method1() {print("Class - Virtual Table method1")}
// func method2() {print("Class - Virtual Table method2")}
// func anotherMethod() {print("Class - Virtual Table method3")}
// =================================


// =================================
// [Protocol Witness Table]
// func method1() {print("Protocol - Withness Table method1") // 요구사항 - 우선순위 반영
// func method2() {print("Protocol - Withness Table method2")} // 요구사항 - 우선순위 반영
// =================================

// 함수란 결국 cpu가 실행될 수 있는 형태의 명령어. 명령어는 당연히 코드영역에서밖에 없음.
// 데이터, 힙, 스택 : 결국 cpu에 관련된 명령어가 쓰고있는 데이터
// 데이터 영역엔 메모리를 저장

// 중첩타입
//class Aclass {
//    struct Bstruct {
//        enum Cenum {
//            case aCase
//            case bCase
//
//            struct Dstruct {
//
//            }
//        }
//        var name: Cenum
//    }
//}
//
//// 타입 선언과 인스턴스 생성
//
//let aClass: Aclass = Aclass()
////            타입     인스턴스
//let bStruct: Aclass.Bstruct = Aclass.Bstruct(name: .bCase)
////                타입                인스턴스
//let cEnum: Aclass.Bstruct.Cenum = Aclass.Bstruct.Cenum.aCase
////                  타입                       인스턴스
//let dStruct: Aclass.Bstruct.Cenum.Dstruct = Aclass.Bstruct.Cenum.Dstruct()
////                        타입                            인스턴스
//

// Why?
// 1) 특정정 타입에서만 사용하기 위함
// Bstruct는 Aclass 타입과 관계가 있고, Aclass없이는 의미가 없을 수 있음
// 2) 타입 간의 연관성을 명확히 구분하고, 내부 구조를 디테일하게 설계 가능

// 중첩타입으로 선언된 API들을 볼 줄 알아야 함!!
// 1) 중간 타입에 대문자가 나오면, 중첩타입임을 인지
// (ex: DateFormatter.Style.full)아 Date라는 구조체 or 클래스 안에 중첩타입으로
// enum 타입의 Style의 full case를 의미하는구나! 파악
// 2) 실제 앱을 만들때 중첩 선언을 잘 활용해야 함 (타입 관계 명확성)
// 3) 하나의 타입의 내부 구조(계층 관계 등)을 디테일 하게 설계 가능


// 클로저
//let functionA: (String) -> String // 1) 파라미터 문자열 2) 리턴형 문자열
//let functionB: (Int) -> ()        // 1) 파라미터 정수 2) 리턴형 없음
//let functionC: (String) -> Void   // 1) 파라미터 문자열 2) 리턴형 없음
//
//// 함수의 정의
//func aFunction(str: String) -> String {
//    return "Hello, \(str)"
//}
//
//// 클로저 형태
//let _ = {(str: String) -> String in
//    return "Hello, \(str)"
//}
//
//let aClosureType = {print("안녕")}
//aClosureType() // 클로저를 변수에 담아 실행할 수 있음

//func performClosure(param: (String) -> Int) {
//    param("Swift")
//}
//
//performClosure(param: { (str: String) -> Int in
//    return str.count
//})
//
//performClosure(param: { (str: String) in
//    return str.count
//})
//
//performClosure(param: { (str: String) in
//    str.count
//})
//
//performClosure(param: { str in
//    str.count
//})
//
//performClosure(param: {
//    $0.count
//})
//
//performClosure(){ $0.count }
//performClosure { $0.count }


// map 함수 -> 배열에 있는 함수 라고 생각!
// 기존의 배열에서 각 아이템을 새롭게 매칭하는 함수 -> mapping => 클로저에서 개발자가 구현!

//let numbers:[Int] = [1, 2, 3, 4, 5]
//
//var aaa: [String] = numbers.map { num in // 여기서 num은 파라미터의 이름임
//    return "숫자: \(num)" // Int -> String으로!
//}
//
//print(aaa)
//
//// 위를 줄이면
//var aa = numbers.map {"숫자: \($0)"}
//print(aa) // 동일한 출력값이 나옴
//
//var bbb = numbers.map{ number in
//    return number * 1000
//}
//
//print(bbb)

// filter
//let names = ["Cody", "Allen", "Hamang", "Bebe"]
//
//var name = names.filter { str in
//    return str.contains("B") // B를 포함한 문자열이 있는지 확인 -> Bool 타입으로 리턴
//}
//
//print(name)
//
//// filter의 활용
//let array = [1,2,3,4,5,6,7,8]

//var evenNumbersArray = array.filter { num in
//    return num % 2 == 0
//}

//var evenNumbersArray = array.filter { $0 % 2 == 0 } // 축약형
//
//print(evenNumbersArray)
//
//// 함수에 넣어서 구현 가능
//
//func isEven(_ i: Int) -> Bool {
//    return i % 2 == 0
//}
//
//var bbb = array.filter(isEven)
//print(bbb)
//
//var evenNumbersArray = array.filter { $0 % 2 == 0 }.filter{ $0 < 5 }
//print(evenNumbersArray)

// reduce

//var numbersArray = [1,2,3,4,5,6,7,8,9,10]
//
////var aaa = numbersArray.reduce(0) { a, b in
////    return a+b
////}
////
////print(aaa)
//
//var aaa = numbersArray.reduce("0") { result, item in
//    return result + String(item)
//}
//
//print(aaa)

//var numbersArray = [1,2,3,4,5,6,7,8,9,10]
//
//// 위의 배열 중에, 홀수만 제곱해서, 그 숫자를 다 더한 값은?
//
//var aaa = numbersArray.filter{ $0 % 2 != 0 }.map{ $0 * $0}.reduce(0){ $0 + $1}
//
//print(aaa)

// forEach 함수
// 기존 배열 등의 각 아이템을 활용해서 각 아이템별로 특정 작업을 실행
//
//let imutableArray = [1,2,3,4,5]
//
//imutableArray.forEach { num in
//    print(num)
//}
//
//// compactMap 함수
//// 기존 배열 등의 각 아이템을 새롭게 매핑해서 변형하되, 옵셔널 요소는 제거하고 새로운 배열을 리턴
//// map + 옵셔널 제거
//// 옵셔널 바인딩의 기능까지 내장
//let stringArray: [String?] = ["A", nil, "B", nil, "C"]
//
//var newStringArray = stringArray.compactMap{ $0 }
//print(newStringArray)
//
//let numbers = [-2, -1, 0, 1, 2]
//
//var positiveNumbers = numbers.compactMap { $0 >= 0 ? $0 : nil}
//print(positiveNumbers)
//
//// flatMap
//// 중첩된 각 배열을 새롭게 매핑해서 내부 중첩된 배열을 제거하고 리턴
//
//let newNnestedArray = [[1,2,3], [4,5,6],[7,8,9], [[10,11],[12,13,14]]]
//print(newNnestedArray.flatMap{ $0 })


// 옵셔널 체이닝 (옵셔널 타입에 대해, 접근연산자를 호출하는 방법)
// 옵셔널 체이닝의 결과는 항상 옵셔널
// 옵셔널 체이닝에 값 중에서 하나라도 nil을 리턴한다면, 이어지는 표현식을 평가하지 않고 nil을 리턴

//class Cat {
//    var name: String?
//
//    var myMaster: (() -> Person?)?
//    init(aFunction: @escaping () -> Person?) {
//        self.myMaster = aFunction
//    }
//}
//
//class Person {
//    var name: String?
//}
//
//func meowmeow() -> Person? {
//    let person = Person()
//    person.name = "Jobs"
//    return person
//}
//
//// 예제를 위한 예제
//
//let cat: Cat? = Cat(aFunction: meowmeow)
//
//var name = cat?.myMaster?()?.name
//// ?()? 에서 앞에있는 물음표는 함수가 없을 수도 있다라는 의미.
//// ?()? 에서 뒤에있는 물음표는 함수의 결과값이 없을 수도 있다라는 의미.
//print(name)

//class Dog {
//    var name: String
//    var owner: Person?
//
//    init(name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//class Person {
//    var name: String
//    var pet: Dog?
//
//    init (name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//var bori: Dog? = Dog(name: "보리")
//var gildong: Person? = Person(name: "홍길동")
//
//bori?.owner = gildong // bori의 owner이 gildong
//gildong?.pet = bori // gildong의 pet이 bori
//
//// 메모리 해제를 하기 위해선 이렇게 해주어야 함.
//bori?.owner = nil
//gildong?.pet = nil
//// -> 레퍼런스 카운팅이 서로 2가 됌.
//
//bori = nil
//gildong = nil
// 강한 참조 사이클이 일어나 nil을 할당해도 메모리 해제가 되지 않고 메모리 누수 현상이 일어남

// 메모리 누수(Memory Leak)의 해결방안
// RC를 고려하여 참조 해제 순서를 주의해서 코드 작성 -> 신경쓸 것이 많고 실수 가능성 존재

// 1) Weak Reference (약한 참조)
// 2) Unowned Reference (비소유 참조)

// 해결 방안 1) 약한 참조

//class Dog {
//    var name: String
//    weak var owner: Person? // 약한 참조를 사용해 reference count를 증가시키지 않음
//
//    init(name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//class Person {
//    var name: String
//    weak var pet: Dog? // 약한 참조 사용
//
//    init (name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//var bori: Dog? = Dog(name: "보리")
//var gildong: Person? = Person(name: "홍길동")
//
//bori?.owner = gildong // bori의 owner이 gildong
//gildong?.pet = bori // gildong의 pet이 bori
//
//
//
//bori = nil
//gildong = nil

// 약한 참조의 경우 참조하고 있던 인스턴스가 사라지면, nil로 초기화 되어있음.

// 2) 비소유 참조

//class Dog {
//    var name: String
//    unowned var owner: Person? // 비소유 참조를 사용해 reference count를 증가시키지 않음
//                               // Swift 5.3 이전버전에서는 비소유 참조의 경우 옵셔널 타입 선언이 안되었음
//    init(name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//class Person {
//    var name: String
//    unowned var pet: Dog? // 비소유 참조 사용
//
//    init (name: String) {
//        self.name = name
//    }
//
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//var bori: Dog? = Dog(name: "보리")
//var gildong: Person? = Person(name: "홍길동")
//
//bori?.owner = gildong // bori의 owner이 gildong
//gildong?.pet = bori // gildong의 pet이 bori
//
//
//bori = nil
//gildong = nil

// 비소유 참조와 약한 참조가 비슷하지만,
// 비소유 참조의 경우 참조하고 있던 인스턴스가 사라지면 nil로 초기화 되지 않음
// nil로 설정하고 접근하면 에러 발생!

// 클로저 캡쳐현상
//func calculate(number: Int) -> Int {
//    var sum = 0
//
//    func square(num: Int) -> Int {
//        sum += (num * num)
//        return sum
//    }
//
//    let result = square(num: number)
//
//    return result
//}
//
//print(calculate(number: 10))
//print(calculate(number: 20))
//print(calculate(number: 30))
//
//func calculateFunc() -> ((Int) -> Int) {
//    var sum = 0
//
//    func square(num: Int) -> Int {
//        sum += (num * num)
//        return sum
//    }
//    return square
//}
//
//// 함수를 변수에 할당하는 경우
//// (heap 메모리에 유지를 해야함. 즉, 함수라 하더라도 클로저 방식으로 동작)
//var squareFunc = calculateFunc()
//
//print(squareFunc(10))
//print(squareFunc(20))
//print(squareFunc(30))

// 객체(class) 내에서 클로저의 사용 => 대부분 앱에서 이렇게 사용
// 클로저 내에서 객체의 속성 및 메서드에 접근 시에는 self키워드를 반드시 사용해야 함.
// (강한 참조를 하고 있다는 것을 표시하기 위한 목적) ==> 여기서는 Dog의 RC를 올리는 역할

//class Dog {
//    var name = "초코"
//
//    func doSomething() {
//        // 비동기적으로 실행하는 클로저
//        // 해당 클로저는 오래동안 저장할 필요가 있음 => 새로운 스택을 만들어서 실행하기 때문
//        DispatchQueue.global().async {
//            print("나의 이름은 \(self.name)입니다.") // 여기서는 self를 제거하면 error 발생
//            // 2번 쓰레드에서 작동하는 명령어
//        }
//    }
//
////    func walk() {
////        print("\(name)가 걷는다") // 인스턴스 내에 name이 있기 때문에 굳이 self 사용안해도 됌
////    }
//}
//
//var choco = Dog()
//choco.doSomething()

// 약한 참조


//class Dog {
//    var name = "초코"
//
//    func doSomething() {
//        DispatchQueue.global().async { [weak self] in
//            print("나의 이름은 \(self?.name)입니다.")

//        }
//    }
//
//}

//class Person {
//    var name = "Cody"
//
//    func myName() {
//        print("나의 이름은 \(name)입니다.")
//    }
//
//    func myName1() {
//        DispatchQueue.global().async {
//            print("나의 이름은 \(self.name)입니다.")
//        }
//    }
//    func myName2() { // 약한 참조
//        DispatchQueue.global().async { [weak self] in
//            print("나의 이름은 \(self?.name)입니다.")
//        }
//    }
//    func myName3() { // 약한 참조 + 옵셔널 바인딩
//        DispatchQueue.global().async { [weak self] in
//
//            guard let weakSelf = self else { return }
//            print("나의 이름은 \(weakSelf.name)입니다.")
//        }
//    }
//}
//
//let person = Person()
//
//person.myName()
//print(person.myName1())
//person.myName2()
//person.myName3()

// 메모리 누수의 약한참조
//class Dog {
//    var name = "초코"
//
//    var run: (() -> Void)?
//
//    func walk() {
//        print("\(self.name)가 걷는다.")
//    }
//    func saveClosure() {
//        run = {
//            print("\(self.name)가 뛴다.")
//        }
//    }
//    deinit {
//        print("\(self.name) 메모리 해제")
//    }
//}

// 메모리 누수의 사례
// 강한참조 사이클로 인한 메모리누수의 사례

//class Dog {
//    var name = "초코"
//
//    var run: (() -> Void)?
//
//    func walk() {
//        print("\(self.name)가 걷는다.")
//    }
//
//    func saveClosure() {
//        // 클로저를 인스턴스의 변수에 저장
//        run = {
//            print("\(self.name)가 뛴다.")
//        }
//
//    }
//
//    deinit {
//        print("\(self.name) 메모리 해제")
//    }
//}
//
//func doSomething() {
//    let choco: Dog? = Dog()
//choco?.saveClosure() // 강한 참조사이클 일어남 (메모리 누수가 일어남)
//}
//
//print(doSomething())
//doSomething()

//class ViewController: UIViewController {
//    var name: String = "뷰컨"
//
//    func doSomething() {
//        DispatchQueue.global().async {
//            sleep(3) // 3초동안 동작을 멈추는 함수
//            print("글로벌큐에서 출력하기: \(self.name)")
//        }
//    }
//    deinit {
//        print("\(name) 메모리 해제")
//    }
//}
//
//func localScopeFunction() {
//    let vc = ViewController()
//    vc.doSomething()
//}
//
//localScopeFunction()


// 에러처리
// 에러 종류
// 1) 컴파일 타임 에러 -> 코드를 수정하면 됌
// 2) 런타임 에러 -> 프로그램이 실행하는 동안 발생

// 에러를 정의하는 법
// 에러를 정의하려면 error 프로토콜을 채택해야 함
// 에러를 먼저 정의해주어야 함수에서 에러처리를 할 수 있음.
//enum SomeError: Error {
//    case aError
//    case bError
//    case cError
//}
//
//
//// 여기서 에러는 열거형임
//func doSomething(num: Int) throws -> Bool { // 에러를 던질 수 있는 함수
//    if num >= 7 {
//        return true
//    } else {
//
//        if num < 0 {
//            throw SomeError.aError
//        } else {
//            throw SomeError.bError
//        }
//
//        return false
//    }
//}


// 에러 처리 과정 -> 3단계
// 1. 에러를 정의
// 2. 에러를 던질 수 있는 함수를 정의
// 3. 에러를 정의할 수 있는 처리를 해야 함.



// 1) 에러 정의
//enum HeightError: Error {
//    case maxHeight
//    case minHeight
//}
//
//
//// 2) 에러가 발생할 수 있는 함수에 대한 정의
//func checkKingHeight(height: Int) throws -> Bool {
//
//    if height > 190 {
//        throw HeightError.maxHeight
//    } else if height < 130 {
//        throw HeightError.minHeight
//    } else {
//        if height >= 160 {
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//// 3) 에러가 발생할 수 있는 함수의 처리 (함수의 실행)
//
//do { // 정상적인 경우의 처리 상황
//    let isChecked = try checkKingHeight(height: 200)
//    print("놀이기구 타는 것 가능: \(isChecked)")
//
//} catch {
//    print("놀이기구 타는 것 불가능")
//}

// () throws -> () // 에러를 발생시킬 수 있는 함수 타입이구나! 라고 생각!

// Defer문
// 할일을 미루는 것

//func deferStatement1() {
//
//    defer {
//        print("나중에 실행하기")
//    }
//
//    print("먼저 실행하기")
//}
//
//deferStatement1()

//func deferStatement2() {
//    if true {
//        print("먼저 실행하기")
//        return
//    }
//    defer {
//        print("나중에 실행하기")
//    }
//}
//
//deferStatement2() // defer문이 한번이라도 실행되야 defer문이 나옴! 매우 중요!!
//
//for i in 1...3 {
//    defer { print("Defer된 숫자 : \(i)")}
//    print("현재 스코프 :\(i)")
//}

// iOS에서의 네트워킹 기본

//// 0. URL주소 - 문자열로
//let movieURL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?targetDt=20120101&key=ed5188d191b44830a2133865842b6868"
//
//// 1. URL 구조체 만들기
//let url = URL(string: movieURL)!
//
//// 2. URLSession 만들기 (네트워킹을 하는 객체 - 브라우저 같은 역할)
//let session = URLSession.shared
//
//// 3. 세션에 (일시정지 상태로) 작업 부여
//let task = session.dataTask(with: url) { data, response, error in
//    if error != nil {
//        print(error!)
//        return
//    }
//
//    guard let safeData = data else {
//        return
//    }
//
//    // 필요한 데이터 출력
//
//    var movieArray = parseJSON1(safeData)
//    dump(movieArray!) // 깔끔하게 데이터를 출력해 줌
//}
//
//// 4. 작업시작
//task.resume() // 일시정지된 상태로 작업이 시작하기 때문
//
//// http://app.quicktype.io json 데이터를 swift 코드로 변환시켜 주는 것
//
//
//// 분석 ====================================================
//// 받아온 데이터를 우리가 쓰기 좋게 변환하는 과정 -> 분석
//
//// 궁극적인 형태로 배열로 반환
//func parseJSON1(_ movieData: Data) -> [DailyBoxOfficeList]? {
//    do {
//        // 자동으로 원하는 클래스 / 구조체 형태로 분석
//        // JSONDecoder
//        let decoder = JSONDecoder()
//
//        let decodeData = try decoder.decode(MovieData.self, from: movieData)
//        // decoder.decode는 error를 발생시킬 수 있는 메서드이기 때문에 옵셔널 타입으로 반환해야함.
//        // 따라서 try를 반드시 사용해야 하고, try를 사용하기 위해 do-catch문을 사용해야 함.
//        return decodeData.boxOfficeResult.dailyBoxOfficeList
//
//    } catch {
//
//        return nil
//    }
//}
//
//
//// 서버에서 주는 데이터 형태============================
//
//// Decodable : 데이터를 코드로 변환, Encodable : 구조체 / 클래스를 데이터로 변환
//// Codable : Decodable + Encodable 둘이 합친 것으로 자동으로 코드를 분석해줌
//
//struct MovieData: Codable {
//    let boxOfficeResult: BoxOfficeResult
//}
//
//struct BoxOfficeResult: Codable {
//    let dailyBoxOfficeList: [DailyBoxOfficeList]
//}
//
//struct DailyBoxOfficeList: Codable {
//    let rank: String
//    let movieNm: String
//    let audiCnt: String
//    let audiAcc: String
//    let openDt: String
//}

// 0. URL주소 - 문자열로
//let movieURL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?&key=ed5188d191b44830a2133865842b6868&targetDt=20210201"
//
//
//// 1. URL 구조체 만들기
//let url = URL(string: movieURL)!
//
//
//// 2. URLSession 만들기 (네트워킹을 하는 객체 - 브라우저 같은 역할)
//let session = URLSession.shared
//
//
//// 3. 세션에 (일시정지 상태로)작업 부여
//let task = session.dataTask(with: url) { (data, response, error) in
//    if error != nil {
//        print(error!)
//        return
//    }
//
//    guard let safeData = data else {
//        return
//    }
//
//    // 데이터를 그냥 한번 출력해보기
//    //print(String(decoding: safeData, as: UTF8.self))
//
//    dump(parseJSON1(safeData)!)
//
//
//}
//
//// 4.작업시작
//task.resume()   // 일시정지된 상태로 작업이 시작하기 때문
//
//
//// ⭐️ 비동기적으로 동작함
//
//
//
//
//// 받아온 데이터를 우리가 쓰기 좋게 변환하는 과정 (분석) ======================================
//
//// 현재의 형태
//func parseJSON1(_ movieData: Data) -> [DailyBoxOfficeList]? {
//
//    do {
//        // 스위프트5
//        // 자동으로 원하는 클래스/구조체 형태로 분석
//        // JSONDecoder
//        let decoder = JSONDecoder()
//
//        let decodedData = try decoder.decode(MovieData.self, from: movieData)
//
//        return decodedData.boxOfficeResult.dailyBoxOfficeList
//
//    } catch {
//
//        return nil
//    }
//
//}
//



// 예전의 형태
//func parseJSON2(_ movieData: Data) -> [DailyBoxOfficeList]? {
//
//    do {
//
//        var movieLists = [DailyBoxOfficeList]()
//
//        // 스위프트4 버전까지
//        // 딕셔너리 형태로 분석
//        // JSONSerialization
//        if let json = try JSONSerialization.jsonObject(with: movieData) as? [String: Any] {
//            if let boxOfficeResult = json["boxOfficeResult"] as? [String: Any] {
//                if let dailyBoxOfficeList = boxOfficeResult["dailyBoxOfficeList"] as? [[String: Any]] {
//
//                    for item in dailyBoxOfficeList {
//                        let rank = item["rank"] as! String
//                        let movieNm = item["movieNm"] as! String
//                        let audiCnt = item["audiCnt"] as! String
//                        let audiAcc = item["audiAcc"] as! String
//                        let openDt = item["openDt"] as! String
//
//                        // 하나씩 인스턴스 만들어서 배열에 append
//                        let movie = DailyBoxOfficeList(rank: rank, movieNm: movieNm, audiCnt: audiCnt, audiAcc: audiAcc, openDt: openDt)
//
//
//                        movieLists.append(movie)
//                    }
//
//                    return movieLists
//
//                }
//            }
//        }
//
//        return nil
//
//    } catch {
//
//        return nil
//    }
//
//}
//



// 서버에서 주는 데이터의 형태 ====================================================

//struct MovieData: Codable {
//    let boxOfficeResult: BoxOfficeResult
//}
//
//// MARK: - BoxOfficeResult
//struct BoxOfficeResult: Codable {
//    let dailyBoxOfficeList: [DailyBoxOfficeList]
//}
//
//// MARK: - DailyBoxOfficeList
//struct DailyBoxOfficeList: Codable {
//    let rank: String
//    let movieNm: String
//    let audiCnt: String
//    let audiAcc: String
//    let openDt: String
//}
//
// 서버에서 주는 데이터 ===========================================================
//struct MovieData: Codable {
//    let boxOfficeResult: BoxOfficeResult
//}
//
//// MARK: - BoxOfficeResult
//struct BoxOfficeResult: Codable {
//    let dailyBoxOfficeList: [DailyBoxOfficeList]
//}
//
//// MARK: - DailyBoxOfficeList
//struct DailyBoxOfficeList: Codable {
//    let rank: String
//    let movieNm: String
//    let audiCnt: String
//    let audiAcc: String
//    let openDt: String
//}
//
//
//
//// 내가 만들고 싶은 데이터 (우리가 쓰려는 Struct / Class) =======================
//struct Movie {
//    static var movieId: Int = 0   // 아이디가 하나씩 부여되도록 만듦
//    let movieName: String
//    let rank: Int
//    let openDate: String
//    let todayAudience: Int
//    let totalAudience: Int
//
//    init(movieNm: String, rank: String, openDate: String, audiCnt: String, accAudi: String) {
//        self.movieName = movieNm
//        self.rank = Int(rank)!
//        self.openDate = openDate
//        self.todayAudience = Int(audiCnt)!
//        self.totalAudience = Int(accAudi)!
//        Movie.movieId += 1
//    }
//
//}
//
//
//
//// 서버와 통신 ===========================================================
//struct MovieDataManager {
//
//    let movieURL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?"
//
//    let myKey = "ed5188d191b44830a2133865842b6868"
//
//    func fetchMovie(date: String, completion: @escaping ([Movie]?) -> Void) {
//        let urlString = "\(movieURL)&key=\(myKey)&targetDt=\(date)"
//        performRequest(with: urlString) { movies in
//            completion(movies)
//        }
//    }
//
//    func performRequest(with urlString: String, completion: @escaping ([Movie]?) -> Void) {
//        print(#function)
//
//        // 1. URL 구조체 만들기
//        guard let url = URL(string: urlString) else { return }
//
//        // 2. URLSession 만들기 (네트워킹을 하는 객체 - 브라우저 같은 역할)
//        let session = URLSession(configuration: .default)
//
//        // 3. 세션에 작업 부여
//        let task = session.dataTask(with: url) { (data, response, error) in
//            if error != nil {
//                print(error!)
//                completion(nil)
//                return
//            }
//
//            guard let safeData = data else {
//                completion(nil)
//                return
//            }
//
//
//            // 데이터 분석하기
//            if let movies = self.parseJSON(safeData) {
//                //print("parse")
//                completion(movies)
//            } else {
//                completion(nil)
//            }
//        }
//
//        // 4.Start the task
//        task.resume()   // 일시정지된 상태로 작업이 시작하기 때문
//    }
//
//
//    func parseJSON(_ movieData: Data) -> [Movie]? {
//        // 함수실행 확인 코드
//        print(#function)
//
//        let decoder = JSONDecoder()
//
//        do {
//            let decodedData = try decoder.decode(MovieData.self, from: movieData)
//
//            let dailyLists = decodedData.boxOfficeResult.dailyBoxOfficeList
//
//            // 반복문으로 movie배열 생성 ⭐️
////            var myMovielists = [Movie]()
////
////            for movie in dailyLists {
////
////                let name = movie.movieNm
////                let rank = movie.rank
////                let openDate = movie.openDt
////                let todayAudi = movie.audiCnt
////                let accAudi = movie.audiAcc
////
////                let myMovie = Movie(movieNm: name, rank: rank, openDate: openDate, audiCnt: todayAudi, accAudi: accAudi)
////
////                myMovielists.append(myMovie)
////            }
//
//            // 고차함수를 이용해 movie배열 생성하는 경우 ⭐️
//            let myMovielists = dailyLists.map {
//                Movie(movieNm: $0.movieNm, rank: $0.rank, openDate: $0.openDt, audiCnt: $0.audiCnt, accAudi: $0.audiAcc)
//            }
//
//            return myMovielists
//
//        } catch {
//            //print(error.localizedDescription)
//
//            // (파싱 실패 에러)
//            print("파싱 실패")
//
//            return nil
//        }
//
//    }
//
//}
//
//
//// 뷰컨트롤러에서 일어나는 일 ===========================================================
//// 빈배열
//var downloadedMovies = [Movie]()
//
//// 데이터를 다운로드 및 분석/변환하는 구조체
//let movieManager = MovieDataManager()
//
//
//// 실제 다운로드 코드
//movieManager.fetchMovie(date: "20210201") { (movies) in
//
//    if let movies = movies {
//
//        // 배열 받아서 빈배열에 넣기
//        downloadedMovies = movies
//        dump(downloadedMovies)
//
//        print("전체 영화 갯수 확인: \(Movie.movieId)")
//    } else {
//        print("영화데이터가 없습니다. 또는 다운로드에 실패했습니다.")
//    }
//}

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

// 동시성 프로그래밍
// 비동기 vs 동기의 개념

// 비동기 함수
//
//print("1")
//// asyncMethod(5) 5초동안 일이 걸린다고 가정
//print("2") // 안기다리기 때문에 바로 2를 출력
//
//// 동기 함수
//
//print("1")
//// syncMethod(5) 5초동안 여기서 함수가 끝날때까지 기다림
//print("2") // 기다린 후 함수가 끝난 후 2를 출력
//
//// 간단한 작업들
//func task1() {
//    print("task1 시작")
//    print("task1 완료")
//}
//func task2() {
//    print("task2 시작")
//    print("task2 완료")
//}
//func task3() {
//    print("task3 시작")
//    print("task3 완료")
//}
//func task4() {
//    print("task4 시작")
//    print("task4 완료")
//}
//func task5() {
//    print("task5 시작")
//    print("task5 완료")
//}
//
//task1()
//task2()
//task3()
//task4()
//task5()
//
//// 오래 걸리는 작업
//
//func task6() {
//    print("task6 시작")
//    sleep(2)
//    print("task6 완료")
//}
//func task7() {
//    print("task7 시작")
//    sleep(2)
//    print("task7 완료")
//}
//
//func task8() {
//    print("task8 시작")
//    sleep(2)
//    print("task8 완료")
//}
//
//func task9() {
//    print("task9 시작")
//    sleep(2)
//    print("task9 완료")
//}
//
//func task10() {
//    print("task10 시작")
//    sleep(2)
//    print("task10 완료")
//}
//
//// 비동기 처리를 하지 않으면 앱이 버벅거림
//task6()
//task7()
//task8()
//task9()
//task10()
//
//// 오래 걸리는 작업을 비동기 처리를 한다면
//// async : 비동기 sync : 동기
//
//DispatchQueue.global().async {
//    task6()
//}
//
//DispatchQueue.global().async {
//    task7()
//}
//
//DispatchQueue.global().async {
//    task8()
//}
//
//DispatchQueue.global().async {
//    task9()
//}
//
//DispatchQueue.global().async {
//    task10()
//}
//// 큐 생성, 글로벌 큐로, 비동기 적으로
//
//DispatchQueue.global().async {
//}
//
//// 클로저 내부에 있는 작업은 하나의 작업으로 취급 -> 동기적으로 작동
//// 클로저 1개 -> 작업 하나
//DispatchQueue.global().async {
//    print("test1")
//    print("test2")
//    print("test3")
//}
//
//// 비동기적 함수 생성
//func task11() {
//    DispatchQueue.global().async {
//        print("Task 11 시작")
//        sleep(5)
//        print("Task 11 완료")
//    }
//}
//
//// 직렬큐 선언
//
//let seriaQueue = DispatchQueue(label: "serial") // 직렬 큐 정의
//
//seriaQueue.async {
//    task1()
//}
//
//seriaQueue.async {
//    task2()
//}
//
//seriaQueue.async {
//    task3()
//}
//// 비동기적으로 보내더라도 직렬큐이기 때문에 순서적으로 출력
//
//// 동시큐 선언
//let concurrentQueue = DispatchQueue.global()
//
//concurrentQueue.async {
//    task1()
//}
//
//concurrentQueue.async {
//    task2()
//}
//
//concurrentQueue.async {
//    task3()
//}
//
//// 분산해서 동작하기 때문에 순서를 알 수 없음
//
//// 1) 메인 큐
//
//let mainQueue = DispatchQueue.main
//
//mainQueue.async {
//    <#code#>
//}
//
//// 2) 글로벌 큐
//
//let userInteractiveQueue = DispatchQueue.global(qos: .userInteractive)
//let userInitiateQueue = DispatchQueue.global(qos: .userInitiated)
//let defaultQueue = DispatchQueue.global() // 디폴트 글로벌 큐
//let utilityQueue = DispatchQueue.global(qos: .utility)
//
//// 3) 프라이빗(커스텀) 큐
//
//let privateQueue = DispatchQueue(label:  "com.inflearn.serial")
//
//sleep(5)
//// PlaygroundPage.current.finishExecution()
//
//
//var imageView: UIImageView? = nil
//
//
//let url = URL(string: "https://bit.ly/32ps0DI")!
//
//
//// URL세션은 내부적으로 비동기로 처리된 함수임.
//URLSession.shared.dataTask(with: url) { (data, response, error) in
//
//    if error != nil{
//        print("에러있음")
//    }
//
//    guard let imageData = data else { return }
//
//    // 즉, 데이터를 가지고 이미지로 변형하는 코드
//    let photoImage = UIImage(data: imageData)
//
//    // 🎾 이미지 표시는 DispatchQueue.main에서 🎾
//    DispatchQueue.main.async {
//        imageView?.image = photoImage
//    }
//
//
//}.resume()
//
//
//// 1) 메인 큐
//let mainQueue = DispatchQueue.main // 메인 큐
//
//// 2) 글로벌 큐
//
//let userInteractiveQueue = DispatchQueue.global(qos: .userInteractive)
//let userInitatedQueue = DispatchQueue.global(qos: .userInitiated)
//let dafaultQueue = DispatchQueue.global()
//let utilityQueue = DispatchQueue.global(qos: .utility)
//let backgroundQueue = DispatchQueue.global(qos: .background)
//let unspecifiedQueue = DispatchQueue.global(qos: .unspecified)
//
//// 3) 프라이빗(커스텀)큐
//
//let privateQueue = DispatchQueue(label: "qudgus1984@naver.com")
//
//// 메인 큐에서 실행하기 위한 코드 : UI관련 코드는 다시 메인쓰레드로 보내야 함!!
//DispatchQueue.main.async {
//    imageView?.image = photoImage
//}
//
//// 올바른 비동기함수의 설계
//// return이 아닌 콜백함수를 통해 끝나는 시점을 알려주어야 함
//
//func properlyGetImage(with urlString: String, completionHandler: @escaping (UIImage?) -> Void) {
//
//    let url = URL(string: urlString)!
//
//    var photoImage: UIImage? = nil
//
//    URLSession.shared.dataTask(with: url) { (data, response, error) in
//        if error != nil {
//            print("에러있음: \(error!)")
//        }
//        // 옵셔널 바인딩
//        guard let imageData = data else { return }
//
//        // 데이터를 UIImage 타입으로 변형
//        photoImage = UIImage(data: imageData)
//
//        completionHandler(photoImage)
//    }.resume()
//
//}
//
//properlyGetImage(with: <#T##String#>, completionHandler: <#T##<<error type>>#>)
//
//// 동기함수를 비동기적으로 동작하는 함수로 변형하는 방법
//// 내부에 비동기적 처리를 하면 비동기로 동작하는 함수로 변형 가능
//
//func doSomething(com: @escaping(Void) -> Void) {
//    DispatchQueue.global().async {
//        print("프린트 시작")
//        sleep(3)
//        print("프린트 종료")
//        com()
//    }
//}
//print("1")
//doSomething()
//print("2")

// THread - safe 해결법 : 동시큐에서 직렬큐로 보내기

//var array = [String]()
//
//let serialQueue = DispatchQueue(label: "serial") // 직렬큐 생성
//
//for i in 1...20 {
//    DispatchQueue.global().async {
//        print("\(i)")
////        array.append("\(i)") // 동시큐에서 실행하면 동시다발적으로 배열의 메모리에 접근
//
//         serialQueue.async {
//              array.append("\(i)") // 올바른 처리
//         }
//    }
//}
//
//DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//    print(array)
//}

// 제네릭 문법
//
//var num1 = 10
//var num2 = 20
//
//// 두 수자를 스왑(서로 교환) 하는 함수의 정의
//
//func swapTwoInts(_ a: inout Int, _ b: inout Int) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//swapTwoInts(&num1, &num2)
//
//print(num1) // 20
//print(num2) // 10
//
//// 만약, Double을 교환하고 싶다면? String을 교환하고 싶다면?
//
//func swapTwoDoubles(_ a: inout Double, _ b: inout Double) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//func swapTwoString(_ a: inout String, _ b: inout String) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//// 제네릭의 개념이 없으면 함수를 모든 경우마다 다시 정의해야함
//
//// 제네릭 정의
//
//func swapTwoValue<T>(_ a: inout T, _ b: inout T) {
//    let tempA = a
//    a = b
//    b = tempA
//}
//
//var string1 = "Cody"
//var string2 = "iOSdeveloper"
//
//swapTwoValue(&string1, &string2)
//print(string1)
//print(string2)
//
//// <>는 제네릭 타입이라는 뜻! 딕셔너리, 집합, 배열, 옵셔널 타입 등 다양한 곳에서 사용했음! 제네릭은 특별한 타입이 아님!
//
//// 제네릭 구조체 / 클래스 / 열거형
//// 일반적인 구조체 생성
//struct Member {
//    var member: [String] = []
//}
//
//// 제네릭 구조체 생성
//struct GenericMember<T> {
//    var members: [T] = []
//}
//
//let name = GenericMember(members: ["Cody", "Hamang", "Dong"])
//// let age = GenericMember(members: [25, 26, 27])
//// 위에 이미 붕어빵을 찍어낼 때 변수의 타입을 결정해서 고정하기 때문에 다른 타입 불가능
//
//class GridPoint<A> {
//    var x: A
//    var y: A
//
//    init(x: A, y: A) {
//        self.x = x
//        self.y = y
//    }
//}
//
//let aPoint = GridPoint(x: 10, y: 20)
//let bPoint = GridPoint(x: 10.4, y: 20.5)
//
//// 열거형에서 연관값을 가질 때 제네릭으로 정의 가능
//
//enum Pet<T> {
//    case dog
//    case cat
//    case etc(T)
//}
//
//let animal = Pet.etc("고슴도치")
//
//// 프로토콜에서 제네릭의 사용
//
//protocol RemoteControl { // <T>의 방식이 아님
//    associatedtype T     // 연관형식은 대문자로 시작해야 함
//    func changeChannel(to: T) // 관습적으로 Element를 많이 사용
//    func alert() -> T?
//}
//
//// 연관형식이 선언된 프로토콜을 적용한 타입은, typealias로 실제 형식을 표시해야함
//struct TV: RemoteControl {
//
//    typealias T = Int // 생략 가능
//
//    func changeChannel(to: Int) {
//        print("TV 채널 바꿈: \(to)")
//    }
//
//    func alert() -> Int? {
//        return 1
//    }
//}
//
//class Aircon: RemoteControl {
//    func changeChannel(to: String) {
//        print("Aircon 온도바꿈: \(to)")
//    }
//
//    func alert() -> String? {
//        return "1"
//    }
//}

// Result 타입
// 에러처리를 조금 더 편리하게 사용하기 위한 개념

//enum HeightError: Error { // 에러 프로토콜 채택
//    case maxHeight
//    case minHeight
//}
//
//// Result 타입에서는 성공 / 실패했을 경우에 대한 정보가 다 들어있음.
//func resultTypeCheckingHeight(height: Int) -> Result<Bool, HeightError> {
//    if height > 190 {
//        return Result.failure(HeightError.maxHeight)
//    } else if height < 130 {
//        return Result.failure(HeightError.minHeight)
//    } else {
//        if height >= 160 {
//            return Result.success(true)
//        } else {
//            return Result.success(false)
//        }
//    }
//}
//
//// 리턴값을 받음
//let result = resultTypeCheckingHeight(height: 200)
//
//// 처리
//
//switch result {
//case .success(let data):
//    print("결과값은 \(data)입니다.")
//case .failure(let error):
//    print(error)
//}
//
//// do - catch 문 사용할 필요 없이 처리가 간편해지고 코드가 간결해짐
//// 개발자에게 에러 처리를 다양하게 활용할 수 있도록 만든 것!

// Date 구조체의 이해

//let now = Date()
//print(now) // 2022-06-23 07:28:35 +0000
//
//let yesterDay = now - 86400
//print(yesterDay) // 2022-06-22 07:28:35 +0000
//
//print(now.timeIntervalSinceReferenceDate) // 2001년 1월 1일 기준으로 얼마나 시간이 흘렀는지
//// 677662172.791793
//
//print(now.timeIntervalSince1970) // 1970년 1월 1일 기준으로 얼마나 시간이 흘렀는지
//// 1655969419.808432
//
//let oneSecond = TimeInterval(1.0) // 1초간격
//print(oneSecond) // 1.0
//
//// Date의 속성
//
//print(now.distance(to: yesterDay)) // 해당 시점으로부터 차이를 초로 -86400.0
//print(yesterDay.distance(to: now)) // 86400.0
//
//// 날짜를 제대로 다루려면
//// 달력을 다루는 Calender 구조체의 도움도 필요 (양력, 음력인지)
//// 문자열로 변형해주는 DateFormatter 클래스의 도움도 필요
//// 기본적으로 지역 / 타임존의 영향이 있음
//
//for localeName in TimeZone.knownTimeZoneIdentifiers {
//    print(localeName)
//}
//
//print(TimeZone.current) // Asia/Seoul (fixed (equal to current))

// Calendar 구조체의 이해

// 그레로리력 - 양력 : 전세계 표준
//var calendar = Calendar.current // 타입 속성 : 현재의 달력(양력) 변환
//// Calendar(identifier: .gregorian) 직접 생성 but 이런 방식으로는 잘 사용하지 않음
//
//// 지역설정
//
//calendar.locale   // 달력의 지역 (영어 / 한국어) (달력 표기 방법과 관련된 개념)
//calendar.timeZone // 타임존 : Aisa / Seoul (UTC 시간관련된 개념)
//
//// 필요할 때 찾아서 사용
////calendar.locale = Locale(identifier: "ko_KR")
////calendar.timeZone = TimeZone(identifier: "Aisa/Seoul")
//
//let now = Date()
//
//// Date의 년/월/일/시/분/초를 확인하는 방법
//let year: Int = calendar.component(.year, from: now)
//print(year) // 2022
//let month: Int = calendar.component(.month, from: now)
//print(month) // 6
//let day: Int = calendar.component(.day, from: now)
//print(day) // 23
//let hour: Int = calendar.component(.hour, from: now)
//print(hour) // 16
//let minute: Int = calendar.component(.minute, from: now)
//print(minute) // 48
//let second: Int = calendar.component(.second, from: now)
//print(second) // 46
//// 현재 시간 : 2022.06.23 16시 48분 46초라는 의미!
//
//// 요일
//let weekday: Int = calendar.component(.weekday, from: now)
//print(weekday) // 5
//
//// 일요일: 1
//// 월요일: 2
//// ...
//// 토요일: 7
//
//let myCal = Calendar.current
//var myDateCom = myCal.dateComponents([.year, .month, .day], from: now)
//
//print(myDateCom.year!)  // 2022
//print(myDateCom.month!) // 6
//print(myDateCom.day!)   // 23
//
//
//// 실제 사용 예시
//class Dog {
//    var name: String
//    var yearOfBirth: Int
//
//    init(name: String, year: Int) {
//        self.name = name
//        self.yearOfBirth = year
//    }
//
//    // 나이를 계산하는 계산속성
//    var age: Int {
//        get {
//            let year = Calendar.current.component(.year, from: Date())
//            return year - yearOfBirth
//        }
//    }
//}
//
//let choco = Dog(name: "초코", year: 2015)
//print(choco.age) // 7

// DateFormatter : 날짜와 시간을 원하는 형식의 문자열으로 변환하는 방법을 제공하는 클래스

// Date를 특정 형식의 문자열로 변환하려면 -> 지역설정 + 시간대설정 + 날짜형식 + 시간형식

// 날짜 + 시간 <======> String
//let formatter = DateFormatter()
//
//// 지역설정 : 나라 / 지역마다 날짜와 시간을 표시하는 형식과 언어가 다르기 때문
//formatter.locale = Locale(identifier: "en_US")
//// Thursday, June 23, 2022 at 5:16:08 PM Korean Standard Time
//// formatter.locale = Locale(identifier: "ko_KR")
//// 2022년 6월 23일 목요일 오후 5시 11분 30초 대한민국 표준시
//
//// 시간대 설정
//formatter.timeZone = TimeZone.current
//
//// 날짜 형식 성택
//formatter.dateStyle = .full // Thursday, june 23, 2022
//
//// 시간 형식 선택
//formatter.timeStyle = .full // 5:11:30 Korean Standard Time
//
//let someString = formatter.string(from: Date())
//print(someString) // Thursday, June 23, 2022 at 5:16:08 PM Korean Standard Time
//
//// 커스텀 형식으로 생성
//formatter.dateFormat = "yyyy/MM/dd"
//
//let someString2 = formatter.string(from: Date())
//print(someString2) // 2022/06/23
//
//// 반대로 문자열에서 Date로 변환하는 것도 가능
//
//let newFormatter = DateFormatter()
//newFormatter.dateFormat = "yyyy/MM/dd"
//
//let someDate = newFormatter.date(from: "2022/06/23")!
//print(someDate)
//

// 접근제어

class SomeClass {
    private var name = "이름" // 내부적으로만 사용하겠다고 제한
    
    func nameChange(name: String) {
        if name == "길동" {
            return
        }
        self.name = name
    }
}

let object1 = SomeClass()

//object1.name // error 발생 -> private로 접근을 제한했기 때문!
//object1.name = "Cody" // 마찬가지로 error 이러한 것이 접근 제어!

// 이름을 바꾸려면 특정 메서드로 실행 가능
object1.nameChange(name: "Cody")

// 스위프트의 5가지 접근 수준 (Access Levels)

//1. open          - 다른 모듈에서도 접근가능 / 상속 및 재정의도 가능
//2. public        - 다른 모듈에서도 접근 가능 / 상속 및 재정의 불가
//3. internal      - 같은 모듈 내에서만 접근 가능 : 기본적으로 internal로 설정(디폴트값)
//4. fileprivate   - 같은 파일 내에서만 접근 가능
//5. private       - 같은 scope내에서만 접근 가능

// 모듈 : 프레임워크, 라이브러리, 앱 등 import해서 사용할 수 있는 외부의 코드
// 개발자인 내가 만든 코드 / 다른 개발자들이 만든 코드를 import해서 사용할 수 있는 것을 라이브러리

// 접근 제어를 가질 수 있는 요소
// 1) 타입 (클래스/구조체/열거형/스위프트 기본타입)
// 2) 변수/속성
// 3) 함수/메서드(생성자, 서브스크립트 포함)
// 4) 프로토콜도 특정영역으로 제한될 수 있음

// 클래스의 접근수준을 가장 넓히면 open / 구조체 - public (구조체는 상속이 없기 때문)
// UIViewController 같은 경우 -> open으로 선언한 것!

// String, Int 같은 기본 타입도 구조체의 public으로 선언되어서 우리가 사용할 수 있는 것!

// open var some: String = "접근 불가" // error! why? String -> public으로 선언되었기 때문에
// open이라는 더 넓은 범위의 접근을 허용하지 못함. 따라서 public까지만 사용 가능
//public var some: String = "접근 가능" // String이 public으로 선언되었기 때문에 some도 public까지는 선언 가능
//// 자신보다 내부에서 더 낮은 타입을 사용하면 접근을 못해서 사용하지 못할 수도 있음.
//
//open class SomeOpenClass{}
//
//public var somPublicVariable = 0
//fileprivate func someFilePrivateFunction() {}
//
//// 아무것도 붙이지 않으면 -> 디폴트 값인 Internal로 자동 선언되는 것!
//
//// 실무에서 사용하는 관습적인 패턴
//
//// 실제 프로젝트에서 많이 사용하는 관습적인 패턴
//
//class SomeOtherClass {
//    private var _name = "이름" // 쓰기 - private
//
//    var name: String {        // 읽기 - internal
//        return _name
//    }
//}
//// 대부분 _로 선언된 변수는 private로 선언된 것을 관습적으로 사용
//
//// 저장속성의 (외부에서) 쓰기를 제한하기
//
//class SomeAnotherClass {
//    private(set) var name = "이름" // 읽기 - internal / 쓰기 - private
//}
//
//class SomeAnotherClass2 {
//    public private(set) var name = "이름" // 읽기 - public / 쓰기 - private
//}
//
////// 타입을 private으로 선언하면 아무곳에서도 사용할 수 없기 때문에 의미가 없음 ⭐️
////
////private class SomePrivateClass {                    // 명시적인 private 선언
////    open var someOpenProperty = "SomeOpen"
////    public var somePublicProperty = "SomePublic"
////    var someInternalProperty = "SomeInternal"
////    var someFilePrivateProperty = "SomeFilePrivate"     // 실제 fileprivate 처럼 동작 ⭐️ (공식문서 오류)
////    private var somePrivateProperty = "SomePrivate"
////}
////
////
////fileprivate let somePrivate = SomePrivateClass()
////somePrivate.someOpenProperty
////somePrivate.somePublicProperty
////somePrivate.someInternalProperty
////somePrivate.someFilePrivateProperty             // 같은 파일 안이기 때문에 접근 가능
//////somePrivate.somePrivateProperty
//
//// 일반적으로 밖에서 쓰는 것(setter)은 불가능하도록 구현하는 경우가 많음
//
//struct TrackedString {
//    //var numberOfEdits = 0                   // 외부에서도 변경가능
//    //private var numberOfEdits = 0           // 이렇게 선언하면, 읽기도 불가능해짐
//    private(set) var numberOfEdits = 0        // setter에 대해서만 private 선언 ⭐️
//    //internal private(set) var numberOfEdits = 0
//
//    // 속성 관찰자
//    var value: String = "시작" {
//        didSet {
//            numberOfEdits += 1
//        }
//    }
//}
//
//
//var stringToEdit = TrackedString()
//stringToEdit.value = "첫설정"
//stringToEdit.value += " 추가하기1"
//stringToEdit.value += " 추가하기2"
//stringToEdit.value += " 추가하기3"
//print("수정한 횟수: \(stringToEdit.numberOfEdits)")
//print(stringToEdit.value)

// 커스텀 타입의 접근 제어

public class SomePublicClass {
    open var someOpenProperty = "SomeOpen"
    public var somePublicProperty = "SomePublic"
    var someInternalProperty = "SomeInternal"
    fileprivate var someFilePrivateProperty = "SomeFilePrivate"
    private var somePrivateProperty = "SomePrivate"
}

let somePublic = SomePublicClass()
somePublic.someOpenProperty
somePublic.somePublicProperty
somePublic.someInternalProperty
somePublic.someFilePrivateProperty
// somePublic.somePublicProperty

// 타입을 private으로 선언하면 아무곳에서도 사용할 수 없기 때문에 의미가 없음
// -> fileprivate 처럼 동작!
private class SomePrivateClass {
    open var someOpenProperty = "SomeOpen"
    public var somePublicProperty = "SomePublic"
    var someInternalProperty = "SomeInternal"
    fileprivate var someFilePrivateProperty = "SomeFilePrivate"
    private var somePrivateProperty = "SomePrivate"
}

fileprivate let somePrivate = SomePrivateClass()
somePrivate.someOpenProperty
somePrivate.somePublicProperty
somePrivate.someInternalProperty
somePrivate.someFilePrivateProperty

// 상속의 접근제어
public class A {
    fileprivate func someMethod() {}
}

// public 이하의 접근 수준만 가능 why? 부모 클래스가 public이기 때문
internal class B: A {
    override internal func someMethod() { // 접근 수준 올려서 재정의 가능
        super.someMethod() // (더 낮아도) 모듈에서 접근 가능하기 때문에 호출 가능
    }
}

// 확장의 접근제어
public class SomeClass {
    private var somePrivateProperty = "somePrivate"
}

extension SomeClass { // public으로 선언한 것과 같음
    func somePrivateControlFunction() {
        somePrivateProperty = "접근가능"
    }
}
