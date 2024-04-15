import Cocoa

//Task One

func adding(nubmerOne: Double, numberTwo: Double) -> Double {
    return nubmerOne + numberTwo
}
print(adding(nubmerOne: 2, numberTwo: 2))

func subtraction(nubmerOne: Double, numberTwo: Double) -> Double {
    return nubmerOne - numberTwo
}
print(subtraction(nubmerOne: 2, numberTwo: 2))

func multiplication(nubmerOne: Double, numberTwo: Double) -> Double {
    return nubmerOne * numberTwo

}
print(multiplication(nubmerOne: 2, numberTwo: 2))

func division(numberOne: Double, numberTwo: Double) -> (correctResult: Double?, error: String?) {
    var correctResult: Double?
    var error: String?


    if numberTwo == 0 {
        error = "Error"
    } else {
        correctResult = numberOne / numberTwo
    }

    return (correctResult, error)
}
print(division(numberOne: 2, numberTwo: 2))

func divisionTwo(numberOne: Double, numberTwo: Double) -> (correctResult: Double, error: String) {
    let correctResult = numberTwo != 0 ? numberOne / numberTwo : 0.0
    let error = numberTwo == 0 ? "Error" : ""

    return (correctResult, error)
}
print(divisionTwo(numberOne: 2, numberTwo: 2))

func divisionRemainder(numberOne: Int, numberTwo: Int) -> (correctResult: Int, error: String) {
    let correctResult = numberTwo != 0 ? numberOne % numberTwo : 0
    let error = numberTwo == 0 ? "Error" : ""

    return (correctResult, error)
}
print(divisionRemainder(numberOne: 2, numberTwo: 2))


//Task Two Fibonacci numbers using recusrion

func fibonacciNumbers(number: Int)  -> String{

    var arr: [Int] = []
    var a = 0
    var b = 1

    for _ in 0..<number {
        arr.append(b)
        let c = a + b
        a = b
        b = c
    }
    return "\(arr)"

}
print(fibonacciNumbers(number: 8))

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}
print(fibonacci(8))

var sumOfNumber = 0

func doSquared(number: Int, closure: (Int) -> Void) {
    for n in 0...number {
        closure(n * n)
    }
}

doSquared(number: 5, closure: { number in
    sumOfNumber += number
})

/*
 fibonacci(5) calls fibonacci(4) and fibonacci(3).
 fibonacci(4) calls fibonacci(3) and fibonacci(2).
 fibonacci(3) calls fibonacci(2) and fibonacci(1).
 fibonacci(2) returns 1.
 fibonacci(1) returns 1.
 fibonacci(3) adds the results of fibonacci(2) and fibonacci(1), which is 1 + 1 = 2.
 fibonacci(4) adds the results of fibonacci(3) and fibonacci(2), which is 2 + 1 = 3.
 fibonacci(5) adds the results of fibonacci(4) and fibonacci(3), which is 3 + 2 = 5.
 /**/*/

//Task Three Fibonacci numbers using recusrion

func integerPart(of number: Double) -> Int {
    return Int(number)
}

func fractionalPart(of number: Double) -> Double {
    return number - Double(integerPart(of: number))
}
print(integerPart(of: 3.14))
print(fractionalPart(of: 3.14))

//Task Four closur boss

let divisibleByTwo: (Int) -> Bool = { number in
    return number % 2 == 0
}
let lessThanfive: (Int) -> Bool = { number in
    return number < 5
}

let simpleNumber: (Int) -> Bool = { number in
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}
func checkNumbers(To numbers: Int, conditionOne: (Int) -> Bool, conditionTwo: (Int) -> Bool, conditionThree: (Int) -> Bool) {
    for number in 1...numbers {
        if conditionOne(number) {
            print("\(number) divisible by two")
        }
        if conditionTwo(number) {
            print("\(number) less Than five")
        }
        if conditionThree(number) {
            print("\(number) simple of number")
        }
    }
}
checkNumbers(To: 10, conditionOne: divisibleByTwo, conditionTwo: lessThanfive, conditionThree: simpleNumber)

checkNumbers(To: 10) { number in
    return number % 2 == 0
} conditionTwo: { number in
    return number < 5
} conditionThree: {number in
    if number <= 1 {
        return false
    }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}


