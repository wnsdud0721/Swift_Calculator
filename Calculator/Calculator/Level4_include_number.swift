//
//  Level4_include_number.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
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
//func calculatorResult_Level4_include_number () {
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
//}
