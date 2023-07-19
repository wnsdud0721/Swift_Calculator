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
    var operate: AbstractOperation
    // AbstractOperation으로 가는 통로를 만들어주는 것
    init(operate: AbstractOperation) {
        self.operate = operate
    }
//    var operation = AbstractOperation(first: firstNumber, second: secondNumber)
//    init(operation: AbstractOperation = AbstractOperation(first: firstNumber, second: secondNumber)) {
//        self.operation = operation
//    }
    
    func operationCalculator () {
        let result = operate.calculation()
        print(result)
    }
}

class AbstractOperation {
    var first: Double
    var second: Double

    init (first: String, second: String) {
        self.first = Double(first)!
        self.second = Double(second)!
    }
    
    func calculation () -> Double {
        return 0
    }
}

class AddClass: AbstractOperation {
    override func calculation () -> Double {
        
        return first + second
    }
}

class SubstractClass: AbstractOperation {
    override func calculation () -> Double {
        
        return first - second
    }
}

class MultiplyClass: AbstractOperation {
    override func calculation () -> Double {
        
        return first * second
    }
}

class DivideClass: AbstractOperation {
    override func calculation () -> Double {
        
        return first / second
    }
}

class RestClass: AbstractOperation {
    override func calculation () -> Double {
        
        return first - (second * Double((Int(first / second))))
    }
}

// 입력이 이루어지기 전까지는 초기값이 없기 때문에 옵셔널로 선언
var abstractoperation: AbstractOperation?

switch fourOperator {
case "+":
    abstractoperation = AddClass(first: firstNumber, second: secondNumber)
case "-":
    abstractoperation = SubstractClass(first: firstNumber, second: secondNumber)
case "*":
    abstractoperation = MultiplyClass(first: firstNumber, second: secondNumber)
case "/":
    abstractoperation = DivideClass(first: firstNumber, second: secondNumber)
case "%":
    abstractoperation = RestClass(first: firstNumber, second: secondNumber)
default:
    print("다시 연산자를 입력하세요.")
}

if let abstractoperation = abstractoperation {
    let calculator = Calculator(operate: abstractoperation)
    calculator.operationCalculator()
}

