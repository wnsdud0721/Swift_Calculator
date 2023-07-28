//
//  Level3_dependency_switch.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
//

// switch문을 Calculator 안으로
// 다른 파일에서 Calculator를 이용할 때 더 용이함

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
//    func operationCalculator () -> Double {
//        switch fourOperator {
//        case "+":
//            return addclass.addCalculator(first: first, second: second)
//        case "-":
//            return substractclass.substractCalculator(first: first, second: second)
//        case "*":
//            return multiplyclass.multiplyCalculator(first: first, second: second)
//        case "/":
//            return divideclass.divideCalculator(first: first, second: second)
//        case "%":
//            return restclass.restCalculator(first: first, second: second)
//        default:
//            print("다시 연산자를 입력하세요.")
//            return 0
//        }
//    }
//}
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
//func calculatorResult_Level3_dependency_switch () {
//    let calculator = Calculator(first: firstNumber, second: secondNumber, addclass: AddClass(), substractclass: SubstractClass(), multiplyclass: MultiplyClass(), divideclass: DivideClass(), restclass: RestClass())
//    var result = calculator.operationCalculator()
//    print(result)
//}
