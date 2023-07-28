//
//  Level4_protocol_include_number.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
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
//func calculatorResult_Level4_protocol_include_number () {
//    // 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//    var abstractoperation: AbstractOperation?
//
//    switch fourOperator {
//    case "+":
//        abstractoperation = AddClass(first: firstNumber, second: secondNumber)
//    case "-":
//        abstractoperation = SubstractClass(first: firstNumber, second: secondNumber)
//    case "*":
//        abstractoperation = MultiplyClass(first: firstNumber, second: secondNumber)
//    case "/":
//        abstractoperation = DivideClass(first: firstNumber, second: secondNumber)
//    case "%":
//        abstractoperation = RestClass(first: firstNumber, second: secondNumber)
//    default:
//        print("다시 연산자를 입력하세요.")
//    }
//
//    if let abstractoperation = abstractoperation {
//        let calculator = Calculator(operate: abstractoperation)
//        calculator.operationCalculator()
//    }
//
//}
