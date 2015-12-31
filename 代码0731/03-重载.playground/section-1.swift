// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 函数名：sum
// 函数类型：(Int, Int) -> Int
func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2 + 10
}

// 函数名：sum
// 函数类型：(Int, Int) -> Double
func sum(num1: Int, num2: Int) -> Double {
    return Double(num1) + Double(num2) + 2
}

var a: Int = sum(10, 20)
var b: Double = sum(10, 20)