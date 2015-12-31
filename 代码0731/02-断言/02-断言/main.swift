//
//  main.swift
//  02-断言
//
//  Created by apple on 14-7-31.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import Foundation

//println("A")
//println("B")
//
//var a = 10
//var b = 20
//assert(a > b)
//
//println("C")
//println("D")

func addStudent(name: String, age: Int) {
    assert(age > 0, "年龄参数不正确")
//    if age > 0 {
    println("添加了一个学生：姓名=\(name)，年龄=\(age)")
//    }
}

addStudent("Jack", 20)
addStudent("Jake", -10)
addStudent("Rose", 22)

