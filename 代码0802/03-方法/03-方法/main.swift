//
//  main.swift
//  03-方法
//
//  Created by apple on 14-8-2.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import Foundation



/*
// OC中的函数
int sum(int num1, int num2) {
    return num1 + num2;
}
// OC中的方法
- (int)sun:(int)num1 num2:(int)num2 {
    return num1 + num2;
}
*/

/*
// Swift中的函数\方法
func sum(num1: Int,  num2: Int) -> Int {
    return num1 + num2
}
*/

// 计算器
class Calculator {
    var price: Double = 10.0
    
    class func sum(num1: Int, num2: Int) -> Int {
        self
        println("class--sum")
        return num1 + num2
    }
    
    func sum(num1: Int, num2: Int) -> Int {
        self
        println("obj--sum")
        return num1 + num2
    }
}

Calculator.sum(20, num2: 40)

var c = Calculator()
c.sum(10, num2: 20)

var c2 = Calculator()
c2.sum(10, num2: 20)

//c.sum(cal_num1: 10, num2: 20)

class Person {
    class func run() {
        println("class func run")
    }
//    func run() {
//        println("func run")
//    }
    class func test() {
//        self.run()
        run()
    }
//    func test() {
//        self.run()
//    }
}


