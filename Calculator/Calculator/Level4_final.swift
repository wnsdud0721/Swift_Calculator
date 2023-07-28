//
//  Level4_final.swift
//  Calculator
//
//  Created by Junyoung_Hong on 2023/07/28.
//

class Calculator {
    var first: Double
    var second: Double
    var operate: AbstractOperation
    init(first: String, second: String, operate: AbstractOperation) {
        self.first = Double(first)!
        self.second = Double(second)!
        self.operate = operate
    }

    func operationCalculator() {
        let result = operate.calculation(first: first, second: second)
        print(result)

        // 이전 결과를 첫 번째 숫자로 설정하여 이후 계산에 사용
        first = result
    }
}

protocol AbstractOperation {
    func calculation (first: Double, second: Double) -> Double
    
}

class AddClass: AbstractOperation {
    func calculation (first: Double, second: Double) -> Double {

        return first + second
    }
}

class SubstractClass: AbstractOperation {
    func calculation (first: Double, second: Double) -> Double {

        return first - second
    }
}

class MultiplyClass: AbstractOperation {
    func calculation (first: Double, second: Double) -> Double {

        return first * second
    }
}

class DivideClass: AbstractOperation {
    func calculation (first: Double, second: Double) -> Double {

        return first / second
    }
}

class RestClass: AbstractOperation {
    func calculation (first: Double, second: Double) -> Double {

        return first - (second * Double((Int(first / second))))
    }
}

func calculatorResult_Level4_final () {
    var shouldContinue = true
    var previousResult: Double? = nil

    while shouldContinue {
        if previousResult == nil {
            print("첫 번째 숫자를 입력하세요: ", terminator: "")
            let firstNumber = readLine()!

            // 첫 번째 계산일 경우
            print("연산자를 입력하세요 (+, -, *, /, %, q 종료): ", terminator: "")
            let fourOperator = readLine()!

            if fourOperator.lowercased() == "q" {
                shouldContinue = false
                break
            }

            print("두 번째 숫자를 입력하세요: ", terminator: "")
            let secondNumber = readLine()!

            var abstractoperation: AbstractOperation?

            switch fourOperator {
            case "+":
                abstractoperation = AddClass()
            case "-":
                abstractoperation = SubstractClass()
            case "*":
                abstractoperation = MultiplyClass()
            case "/":
                abstractoperation = DivideClass()
            case "%":
                abstractoperation = RestClass()
            default:
                print("다시 연산자를 입력하세요.")
            }

            if let abstractoperation = abstractoperation {
                let calculator = Calculator(first: firstNumber, second: secondNumber, operate: abstractoperation)
                calculator.operationCalculator()
                previousResult = calculator.first // 첫 번째 계산 결과를 저장
            }
        } else {
            // 이후 계산일 경우
            print("연산자를 입력하세요 (+, -, *, /, %, q 종료): ", terminator: "")
            let fourOperator = readLine()!

            if fourOperator.lowercased() == "q" {
                shouldContinue = false
                break
            }

            print("두 번째 숫자를 입력하세요: ", terminator: "")
            let secondNumber = readLine()!

            var abstractoperation: AbstractOperation?

            switch fourOperator {
            case "+":
                abstractoperation = AddClass()
            case "-":
                abstractoperation = SubstractClass()
            case "*":
                abstractoperation = MultiplyClass()
            case "/":
                abstractoperation = DivideClass()
            case "%":
                abstractoperation = RestClass()
            default:
                print("다시 연산자를 입력하세요.")
            }

            if let abstractoperation = abstractoperation {
                let calculator = Calculator(first: String(previousResult!), second: secondNumber, operate: abstractoperation)
                calculator.operationCalculator()
                previousResult = calculator.first // 계산 결과를 저장
            }
        }
    }


}
