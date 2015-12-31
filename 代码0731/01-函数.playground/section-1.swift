// Playground - noun: a place where people can play

import UIKit
/*
func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func minus(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

func divide(num1: Int, num2: Int) -> Int {
    return num1 / num2
}

func printResult(fn: (Int, Int) -> Int, num1: Int, num2: Int) {
    println(fn(num1, num2))
}

//var c = sum(20, 10)
//println(c)
printResult(sum, 30, 100)

//var d = minus(20, 10)
//println(d)
printResult(minus, 30, 100)

//var e = divide(20, 10)
//println(e)
printResult(divide, 100, 20)
*/
//sum(10, 20)
//var fn = sum
//
////var c = fn(10, 20)
//
//
//func printLine() {
//    println("-------------")
//}
//
//var fn2 = printLine



func howToDo(day: Int) -> Void -> Void {
    func goToWork() {
        println("上班去。。。。")
    }
    
    func haveFun() {
        println("踢足球。。。。")
    }
    
    if day == 6 || day == 7 {
        return haveFun
    } else {
        return goToWork
    }
}

var fn = howToDo(6)
fn()

//haveFun()

