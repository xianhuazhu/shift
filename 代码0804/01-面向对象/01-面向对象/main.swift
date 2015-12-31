//
//  main.swift
//  01-面向对象
//
//  Created by apple on 14-8-4.
//  Copyright (c) 2014年 heima. All rights reserved.
//

/*
class Person {
    var age: Int = 1 {
        willSet {
            println("willSet")
        }
        didSet {
            println("didSet")
        }
    }
    
    var name: String {
        get {
            return "jack"
        }
        set {
        
        }
    }
}
var p = Person()
p.age = 3
p.name = "rose" */


class Animal {
    var speed: Int {
        get {
            return 100
        }
        set {
        
        }
    }
}

class Dog : Animal {
    override var speed: Int {
        get {
            return 200
        }
        set {
            
        }
    }
}

var d = Dog()
d.speed = 10

//class Animal {
//    var speed: Int = 100 {
//        willSet {
//            println("Animal-willSet")
//        }
//        
//        didSet {
//            println("Animal-didSet")
//        }
//    }
//}
//
//class Dog : Animal {
//    override var speed: Int {
//        willSet {
//            println("Dog-willSet")
//        }
//
//        didSet {
//            println("Dog-didSet")
//        }
//    }
//}
//
////var a = Animal()
////a.speed = 10
//
//var d = Dog()
//d.speed = 10