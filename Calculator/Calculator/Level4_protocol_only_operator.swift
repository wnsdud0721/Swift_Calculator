//
//  Level4_protocol_only_operator.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
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
//func calculatorResult_Level4_protocol_only_operator () {
//    // 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
//    var abstractoperation: AbstractOperation?
//
//    switch fourOperator {
//    case "+":
//        abstractoperation = AddClass()
//    case "-":
//        abstractoperation = SubstractClass()
//    case "*":
//        abstractoperation = MultiplyClass()
//    case "/":
//        abstractoperation = DivideClass()
//    case "%":
//        abstractoperation = RestClass()
//    default:
//        print("다시 연산자를 입력하세요.")
//    }
//
//    if let abstractoperation = abstractoperation {
//        let calculator = Calculator(first: firstNumber, second: secondNumber, operate: abstractoperation)
//        calculator.operationCalculator()
//    }
//}
