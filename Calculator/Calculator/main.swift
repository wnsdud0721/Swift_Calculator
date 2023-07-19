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

// Level_4
var firstNumber = readLine()!
var fourOperator = readLine()!
var secondNumber = readLine()!

class Calculator {
    var first: Double
    var second: Double

    init (first: String, second: String) {
        self.first = Double(first)!
        self.second = Double(second)!
    }
}

class AddClass: Calculator {
    func addCalculator () -> Double {
        let addResult = first + second
        return addResult
    }
}

class SubstractClass: Calculator {
    func substractCalculator () -> Double {
        let substractResult = first - second
        return substractResult
    }
}

class MultiplyClass: Calculator {
    func multiplyCalculator () -> Double {
        let multiplyResult = first * second
        return multiplyResult
    }
}

class DivideClass: Calculator {
    func divideCalculator () -> Double {
        let divideResult = first / second
        return divideResult
    }
}

class RestClass: Calculator {
    func restCalculator() -> Double {
        let restResult = first - (second * Double((Int(first / second))))
        return restResult
    }
}


let addclass = AddClass(first: firstNumber, second: secondNumber)
let substractclass = SubstractClass(first: firstNumber, second: secondNumber)
let multiplyclass = MultiplyClass(first: firstNumber, second: secondNumber)
let divideclass = DivideClass(first: firstNumber, second: secondNumber)
let restclass = RestClass(first: firstNumber, second: secondNumber)

switch fourOperator {
case "+":
    print(addclass.addCalculator())
case "-":
    print(substractclass.substractCalculator())
case "*":
    print(multiplyclass.multiplyCalculator())
case "/":
    print(divideclass.divideCalculator())
case "%":
    print(restclass.restCalculator())
default:
    print("다시 연산자를 입력하세요.")
}

