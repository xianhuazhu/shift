//
//  main.swift
//  02-属性
//
//  Created by apple on 14-8-2.
//  Copyright (c) 2014年 heima. All rights reserved.
//

import Foundation

/*
class Square {
    // 周长
//    var girth: Double {
//        get {
//            return 40
//        }
//    }
//    
//    var girth: Double {
//        return 40
//    }
    
     var width: Double = 0.0
}

//var s = Square()
//println("周长=\(s.girth)")

var s1 = Square()
s1.width = 20

var s2 = Square()
s2.width = 40

println("s1.width=\(s1.width), s2.width=\(s2.width)")
*/

// 有昨天的ppt吗
/*
class Circle {
    // 类型属性
    class var PI: Double {
        return 3.14
    }
}

//var c1 = Circle()

println("圆周率=\(Circle.PI)")
*/

/*
class Square {
    var width: Double = 0.0 {
        willSet(newWidth) { // 在属性赋值之前调用
            println("willSet---new=\(newWidth), current=\(width)")
        }
        didSet(oldWidth) { // 在属性赋值之后调用
            println("didSet---old=\(oldWidth), current=\(width)")
        }
    }
    
    // 周长
    var girth: Double {
        get {
            return width * 4
        }
        set { // 计算属性可以直接在set方法中监听
            width = newValue / 4
        }
    }
}

var s = Square()
s.width = 10.0*/

class Square {
    var width: Double = 0.0 {
        willSet {
        
        }
        didSet {
            width = 80
        }
    }
}

var s = Square()
s.width = 40
println("width=\(s.width)")
