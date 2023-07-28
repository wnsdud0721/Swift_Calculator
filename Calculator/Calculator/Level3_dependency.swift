//
//  Level3_dependency.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
//

// 의존성 고려
// 다른 파일에서 Calculator를 사용할 때, switch문을 다시 작성해야 함

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
//func calculatorResult_Level3_dependency () {
//    let calculator = Calculator(first: firstNumber, second: secondNumber, addclass: AddClass(), substractclass: SubstractClass(), multiplyclass: MultiplyClass(), divideclass: DivideClass(), restclass: RestClass())
//
//    switch fourOperator {
//    case "+":
//        print(calculator.addclass.addCalculator(first: calculator.first, second: calculator.second))
//    case "-":
//        print(calculator.substractclass.substractCalculator(first: calculator.first, second: calculator.second))
//    case "*":
//        print(calculator.multiplyclass.multiplyCalculator(first: calculator.first, second: calculator.second))
//    case "/":
//        print(calculator.divideclass.divideCalculator(first: calculator.first, second: calculator.second))
//    case "%":
//        print(calculator.restclass.restCalculator(first: calculator.first, second: calculator.second))
//    default:
//        print("다시 연산자를 입력하세요.")
//    }
//
//}
