//
//  Level3_inheritance.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
//

// 내가 어떤 음식을 차갑게 할려고 했을 때, 냉장고를 이용하는 것이 아니라,
// 내가 어떤 동작을 함으로써 음식이 차가워지는 방향
// 상속의 방향이 잘 못 되었음
// 각 연산 클래스들이 숫자를 상속받아서 계산을 하게 되면
// 각 연산 클래스들을 분리한 의미가 없어짐
// 상속이용 버전

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
//func calculatorResult_Level3_inheritance () {
//    let addclass = AddClass(first: firstNumber, second: secondNumber)
//    let substractclass = SubstractClass(first: firstNumber, second: secondNumber)
//    let multiplyclass = MultiplyClass(first: firstNumber, second: secondNumber)
//    let divideclass = DivideClass(first: firstNumber, second: secondNumber)
//    let restclass = RestClass(first: firstNumber, second: secondNumber)
//
//    switch fourOperator {
//    case "+":
//        print(addclass.addCalculator())
//    case "-":
//        print(substractclass.substractCalculator())
//    case "*":
//        print(multiplyclass.multiplyCalculator())
//    case "/":
//        print(divideclass.divideCalculator())
//    case "%":
//        print(restclass.restCalculator())
//    default:
//        print("다시 연산자를 입력하세요.")
//    }
//
//}
