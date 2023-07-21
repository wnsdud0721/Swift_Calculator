// Level_2
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var first: Double
//    var second: Double
//
//    init (first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func addCalculator () -> Double {
//        let addResult = first + second
//        return addResult
//    }
//    func substractCalculator () -> Double {
//        let substractResult = first - second
//        return substractResult
//    }
//    func multiplyCalculator () -> Double {
//        let multiplyResult = first * second
//        return multiplyResult
//    }
//    func divideCalculator () -> Double {
//        let divideResult = first / second
//        return divideResult
//    }
//    func restCalculator() -> Double {
//        let restResult = first - (second * Double((Int(first / second))))
//        return restResult
//    }
//}
//
//
//let calculator = Calculator(first: firstNumber, second: secondNumber)
//
//switch fourOperator {
//case "+":
//    print(calculator.addCalculator())
//case "-":
//    print(calculator.substractCalculator())
//case "*":
//    print(calculator.multiplyCalculator())
//case "/":
//    print(calculator.divideCalculator())
//case "%":
//    print(calculator.restCalculator())
//default:
//    print("다시 연산자를 입력하세요.")
//}

// 내가 어떤 음식을 차갑게 할려고 했을 때, 냉장고를 이용하는 것이 아니라,
// 내가 어떤 동작을 함으로써 음식이 차가워지는 방향
// 상속의 방향이 잘 못 되었음
// 각 연산 클래스들이 숫자를 상속받아서 계산을 하게 되면
// 각 연산 클래스들을 분리한 의미가 없어짐
// 상속이용 버전
// Level_3
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var first: Double
//    var second: Double
//
//    init (first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//}
//
//class AddClass: Calculator {
//    func addCalculator () -> Double {
//        let addResult = first + second
//        return addResult
//    }
//}
//
//class SubstractClass: Calculator {
//    func substractCalculator () -> Double {
//        let substractResult = first - second
//        return substractResult
//    }
//}
//
//class MultiplyClass: Calculator {
//    func multiplyCalculator () -> Double {
//        let multiplyResult = first * second
//        return multiplyResult
//    }
//}
//
//class DivideClass: Calculator {
//    func divideCalculator () -> Double {
//        let divideResult = first / second
//        return divideResult
//    }
//}
//
//class RestClass: Calculator {
//    func restCalculator() -> Double {
//        let restResult = first - (second * Double((Int(first / second))))
//        return restResult
//    }
//}
//
//
//let addclass = AddClass(first: firstNumber, second: secondNumber)
//let substractclass = SubstractClass(first: firstNumber, second: secondNumber)
//let multiplyclass = MultiplyClass(first: firstNumber, second: secondNumber)
//let divideclass = DivideClass(first: firstNumber, second: secondNumber)
//let restclass = RestClass(first: firstNumber, second: secondNumber)
//
//switch fourOperator {
//case "+":
//    print(addclass.addCalculator())
//case "-":
//    print(substractclass.substractCalculator())
//case "*":
//    print(multiplyclass.multiplyCalculator())
//case "/":
//    print(divideclass.divideCalculator())
//case "%":
//    print(restclass.restCalculator())
//default:
//    print("다시 연산자를 입력하세요.")
//}

// 의존성 고려
// 다른 파일에서 Calculator를 사용할 때, switch문을 다시 작성해야 함
// Level3
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var first: Double
//    var second: Double
//    let addclass: AddClass
//    let substractclass: SubstractClass
//    let multiplyclass: MultiplyClass
//    let divideclass: DivideClass
//    let restclass: RestClass
//    init (first: String, second: String, addclass: AddClass, substractclass: SubstractClass, multiplyclass: MultiplyClass, divideclass: DivideClass, restclass: RestClass) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//        self.addclass = addclass
//        self.substractclass = substractclass
//        self.multiplyclass = multiplyclass
//        self.divideclass = divideclass
//        self.restclass = restclass
//    }
//}
//
//class AddClass {
//    func addCalculator (first: Double, second: Double) -> Double {
//        return first + second
//    }
//}
//
//class SubstractClass {
//    func substractCalculator (first: Double, second: Double) -> Double {
//        return first - second
//    }
//}
//
//class MultiplyClass {
//    func multiplyCalculator (first: Double, second: Double) -> Double {
//        return first * second
//    }
//}
//
//class DivideClass {
//    func divideCalculator (first: Double, second: Double) -> Double {
//        return first / second
//    }
//}
//
//class RestClass {
//    func restCalculator(first: Double, second: Double) -> Double {
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//let calculator = Calculator(first: firstNumber, second: secondNumber, addclass: AddClass(), substractclass: SubstractClass(), multiplyclass: MultiplyClass(), divideclass: DivideClass(), restclass: RestClass())
//
//switch fourOperator {
//case "+":
//    print(calculator.addclass.addCalculator(first: calculator.first, second: calculator.second))
//case "-":
//    print(calculator.substractclass.substractCalculator(first: calculator.first, second: calculator.second))
//case "*":
//    print(calculator.multiplyclass.multiplyCalculator(first: calculator.first, second: calculator.second))
//case "/":
//    print(calculator.divideclass.divideCalculator(first: calculator.first, second: calculator.second))
//case "%":
//    print(calculator.restclass.restCalculator(first: calculator.first, second: calculator.second))
//default:
//    print("다시 연산자를 입력하세요.")
//}

// switch문을 Calculator 안으로
// 다른 파일에서 Calculator를 이용할 때 더 용이함
// Level3
var firstNumber = readLine()!
var fourOperator = readLine()!
var secondNumber = readLine()!

class Calculator {
    var first: Double
    var second: Double
    let addclass: AddClass
    let substractclass: SubstractClass
    let multiplyclass: MultiplyClass
    let divideclass: DivideClass
    let restclass: RestClass
    init (first: String, second: String, addclass: AddClass, substractclass: SubstractClass, multiplyclass: MultiplyClass, divideclass: DivideClass, restclass: RestClass) {
        self.first = Double(first)!
        self.second = Double(second)!
        self.addclass = addclass
        self.substractclass = substractclass
        self.multiplyclass = multiplyclass
        self.divideclass = divideclass
        self.restclass = restclass
    }
    func operationCalculator () -> Double {
        switch fourOperator {
        case "+":
            return addclass.addCalculator(first: first, second: second)
        case "-":
            return substractclass.substractCalculator(first: first, second: second)
        case "*":
            return multiplyclass.multiplyCalculator(first: first, second: second)
        case "/":
            return divideclass.divideCalculator(first: first, second: second)
        case "%":
            return restclass.restCalculator(first: first, second: second)
        default:
            print("다시 연산자를 입력하세요.")
            return 0
        }
    }
}
class AddClass {
    func addCalculator (first: Double, second: Double) -> Double {
        return first + second
    }
}

class SubstractClass {
    func substractCalculator (first: Double, second: Double) -> Double {
        return first - second
    }
}

class MultiplyClass {
    func multiplyCalculator (first: Double, second: Double) -> Double {
        return first * second
    }
}

class DivideClass {
    func divideCalculator (first: Double, second: Double) -> Double {
        return first / second
    }
}

class RestClass {
    func restCalculator(first: Double, second: Double) -> Double {
        return first - (second * Double((Int(first / second))))
    }
}

let calculator = Calculator(first: firstNumber, second: secondNumber, addclass: AddClass(), substractclass: SubstractClass(), multiplyclass: MultiplyClass(), divideclass: DivideClass(), restclass: RestClass())
var result = calculator.operationCalculator()
print(result)


// Level_4
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    // Calculator가 AbstractOperation 인스턴스와 연결되어, 해당 인스턴스의 연산을 실행하는데 사용
//    var operate: AbstractOperation
//    // AbstractOperation으로 가는 통로를 만들어주는 것
//    init(operate: AbstractOperation) {
//        self.operate = operate
//    }
//
//    func operationCalculator () {
//        let result = operate.calculation()
//        print(result)
//    }
//}
//
//class AbstractOperation {
//    // AbstractOperation은 정말 계산만 담당
//    // 프로퍼티를 생성하고, 초기화하는 부분을 Calculator로 이동
//    var first: Double
//    var second: Double
//
//    init (first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return 0
//    }
//}
//
//class AddClass: AbstractOperation {
//    override func calculation () -> Double {
//
//        return first + second
//    }
//}
//
//class SubstractClass: AbstractOperation {
//    override func calculation () -> Double {
//
//        return first - second
//    }
//}
//
//class MultiplyClass: AbstractOperation {
//    override func calculation () -> Double {
//
//        return first * second
//    }
//}
//
//class DivideClass: AbstractOperation {
//    override func calculation () -> Double {
//
//        return first / second
//    }
//}
//
//class RestClass: AbstractOperation {
//    override func calculation () -> Double {
//
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//// 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//var abstractoperation: AbstractOperation?
//
//switch fourOperator {
//case "+":
//    abstractoperation = AddClass(first: firstNumber, second: secondNumber)
//case "-":
//    abstractoperation = SubstractClass(first: firstNumber, second: secondNumber)
//case "*":
//    abstractoperation = MultiplyClass(first: firstNumber, second: secondNumber)
//case "/":
//    abstractoperation = DivideClass(first: firstNumber, second: secondNumber)
//case "%":
//    abstractoperation = RestClass(first: firstNumber, second: secondNumber)
//default:
//    print("다시 연산자를 입력하세요.")
//}
//
//if let abstractoperation = abstractoperation {
//    let calculator = Calculator(operate: abstractoperation)
//    calculator.operationCalculator()
//}

//Level4_AbstractOperation 계산 클래스 추상화
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var first: Double
//    var second: Double
//    var operate: AbstractOperation
//    init(first: String, second: String, operate: AbstractOperation) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//        self.operate = operate
//    }
//
//    func operationCalculator () {
//        let result = operate.calculation(first: first, second: second)
//        print(result)
//    }
//}
//
//class AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//        return 0
//    }
//}
//
//class AddClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first + second
//    }
//}
//
//class SubstractClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first - second
//    }
//}
//
//class MultiplyClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first * second
//    }
//}
//
//class DivideClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first / second
//    }
//}
//
//class RestClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//// 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//var abstractoperation: AbstractOperation?
//
//switch fourOperator {
//case "+":
//    abstractoperation = AddClass()
//case "-":
//    abstractoperation = SubstractClass()
//case "*":
//    abstractoperation = MultiplyClass()
//case "/":
//    abstractoperation = DivideClass()
//case "%":
//    abstractoperation = RestClass()
//default:
//    print("다시 연산자를 입력하세요.")
//}
//
//if let abstractoperation = abstractoperation {
//    let calculator = Calculator(first: firstNumber, second: secondNumber, operate: abstractoperation)
//    calculator.operationCalculator()
//}


// protocol 사용
// Level4
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var operate: AbstractOperation
//
//    init(operate: AbstractOperation) {
//        self.operate = operate
//    }
//
//    func operationCalculator () {
//        let result = operate.calculation()
//        print(result)
//    }
//}
//
//protocol AbstractOperation {
//    // get: 읽기, set: 쓰기(값을 입력할 수 있다는 의미)
//    var first: Double { get set }
//    var second: Double { get set }
//
//    // init을 프로토콜에서 사용하게 되면, 무조건 이 규칙을 따라야 함
//    // init (first: String, second: String)
//
//    func calculation () -> Double
//}
//
//class AddClass: AbstractOperation {
//    var first: Double
//    var second: Double
//    init(first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return first + second
//    }
//}
//
//class SubstractClass: AbstractOperation {
//    var first: Double
//
//    var second: Double
//
//    init(first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return first - second
//    }
//}
//
//class MultiplyClass: AbstractOperation {
//    var first: Double
//
//    var second: Double
//
//    init(first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return first * second
//    }
//}
//
//class DivideClass: AbstractOperation {
//    var first: Double
//
//    var second: Double
//
//    init(first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return first / second
//    }
//}
//
//class RestClass: AbstractOperation {
//    var first: Double
//
//    var second: Double
//
//    init(first: String, second: String) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//    }
//
//    func calculation () -> Double {
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//// 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//var abstractoperation: AbstractOperation?
//
//switch fourOperator {
//case "+":
//    abstractoperation = AddClass(first: firstNumber, second: secondNumber)
//case "-":
//    abstractoperation = SubstractClass(first: firstNumber, second: secondNumber)
//case "*":
//    abstractoperation = MultiplyClass(first: firstNumber, second: secondNumber)
//case "/":
//    abstractoperation = DivideClass(first: firstNumber, second: secondNumber)
//case "%":
//    abstractoperation = RestClass(first: firstNumber, second: secondNumber)
//default:
//    print("다시 연산자를 입력하세요.")
//}
//
//if let abstractoperation = abstractoperation {
//    let calculator = Calculator(operate: abstractoperation)
//    calculator.operationCalculator()
//}

// protocol 사용
//Level4_AbstractOperation 계산 클래스 추상화
//var firstNumber = readLine()!
//var fourOperator = readLine()!
//var secondNumber = readLine()!
//
//class Calculator {
//    var first: Double
//    var second: Double
//    var operate: AbstractOperation
//    init(first: String, second: String, operate: AbstractOperation) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//        self.operate = operate
//    }
//
//    func operationCalculator () {
//        let result = operate.calculation(first: first, second: second)
//        print(result)
//    }
//}
//
//protocol AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double
//}
//
//class AddClass: AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//
//        return first + second
//    }
//}
//
//class SubstractClass: AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//
//        return first - second
//    }
//}
//
//class MultiplyClass: AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//
//        return first * second
//    }
//}
//
//class DivideClass: AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//
//        return first / second
//    }
//}
//
//class RestClass: AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//// 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//var abstractoperation: AbstractOperation?
//
//switch fourOperator {
//case "+":
//    abstractoperation = AddClass()
//case "-":
//    abstractoperation = SubstractClass()
//case "*":
//    abstractoperation = MultiplyClass()
//case "/":
//    abstractoperation = DivideClass()
//case "%":
//    abstractoperation = RestClass()
//default:
//    print("다시 연산자를 입력하세요.")
//}
//
//if let abstractoperation = abstractoperation {
//    let calculator = Calculator(first: firstNumber, second: secondNumber, operate: abstractoperation)
//    calculator.operationCalculator()
//}


// Level4_Upgrade
//class Calculator {
//    var first: Double
//    var second: Double
//    var operate: AbstractOperation
//    init(first: String, second: String, operate: AbstractOperation) {
//        self.first = Double(first)!
//        self.second = Double(second)!
//        self.operate = operate
//    }
//
//    func operationCalculator() {
//        let result = operate.calculation(first: first, second: second)
//        print(result)
//
//        // 이전 결과를 첫 번째 숫자로 설정하여 이후 계산에 사용
//        first = result
//    }
//}
//
//class AbstractOperation {
//    func calculation (first: Double, second: Double) -> Double {
//        return 0
//    }
//}
//
//class AddClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first + second
//    }
//}
//
//class SubstractClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first - second
//    }
//}
//
//class MultiplyClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first * second
//    }
//}
//
//class DivideClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first / second
//    }
//}
//
//class RestClass: AbstractOperation {
//    override func calculation (first: Double, second: Double) -> Double {
//
//        return first - (second * Double((Int(first / second))))
//    }
//}
//
//var shouldContinue = true
//var previousResult: Double? = nil
//
//while shouldContinue {
//    if previousResult == nil {
//        print("첫 번째 숫자를 입력하세요: ", terminator: "")
//        let firstNumber = readLine()!
//
//        // 첫 번째 계산일 경우
//        print("연산자를 입력하세요 (+, -, *, /, %, q 종료): ", terminator: "")
//        let fourOperator = readLine()!
//
//        if fourOperator.lowercased() == "q" {
//            shouldContinue = false
//            break
//        }
//
//        print("두 번째 숫자를 입력하세요: ", terminator: "")
//        let secondNumber = readLine()!
//
//        var abstractoperation: AbstractOperation?
//
//        switch fourOperator {
//        case "+":
//            abstractoperation = AddClass()
//        case "-":
//            abstractoperation = SubstractClass()
//        case "*":
//            abstractoperation = MultiplyClass()
//        case "/":
//            abstractoperation = DivideClass()
//        case "%":
//            abstractoperation = RestClass()
//        default:
//            print("다시 연산자를 입력하세요.")
//        }
//
//        if let abstractoperation = abstractoperation {
//            let calculator = Calculator(first: firstNumber, second: secondNumber, operate: abstractoperation)
//            calculator.operationCalculator()
//            previousResult = calculator.first // 첫 번째 계산 결과를 저장
//        }
//    } else {
//        // 이후 계산일 경우
//        print("연산자를 입력하세요 (+, -, *, /, %, q 종료): ", terminator: "")
//        let fourOperator = readLine()!
//
//        if fourOperator.lowercased() == "q" {
//            shouldContinue = false
//            break
//        }
//
//        print("두 번째 숫자를 입력하세요: ", terminator: "")
//        let secondNumber = readLine()!
//
//        var abstractoperation: AbstractOperation?
//
//        switch fourOperator {
//        case "+":
//            abstractoperation = AddClass()
//        case "-":
//            abstractoperation = SubstractClass()
//        case "*":
//            abstractoperation = MultiplyClass()
//        case "/":
//            abstractoperation = DivideClass()
//        case "%":
//            abstractoperation = RestClass()
//        default:
//            print("다시 연산자를 입력하세요.")
//        }
//
//        if let abstractoperation = abstractoperation {
//            let calculator = Calculator(first: String(previousResult!), second: secondNumber, operate: abstractoperation)
//            calculator.operationCalculator()
//            previousResult = calculator.first // 계산 결과를 저장
//        }
//    }
//}
