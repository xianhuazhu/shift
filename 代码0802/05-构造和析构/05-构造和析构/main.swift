//
//  main.swift
//  05-构造和析构
//
//  Created by apple on 14-8-2.
//  Copyright (c) 2014年 heima. All rights reserved.
//

/**
外部参数名总结：
1.函数
* 默认情况下，所有参数仅仅是局部参数名，不是外部参数名

2.方法
* 默认情况下，第一个参数仅仅是局部参数名，不是外部参数名
* 默认情况下，除第一个参数以外，其他所有参数，既是局部参数名，又是外部参数名

3.构造方法
* 默认情况下，所有参数既是局部参数名，又是外部参数名
*/

/*
class Dog {
    var name: String
    var age: Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
}

//var d = Dog(name: "Jack", age: 2)

var d = Dog("jack", 2)
*/

// 只有便利构造方法才能直接调用当前类的其他构造方法
// 只有指定构造方法才能直接调用父类的构造方法

/*
class Dog {
    var speed: Double
    var name: String
    var age: Int
    
    init(name : String, age : Int, speed: Double) {
        self.name = name
        self.age = age
        self.speed = speed
    }
    
    convenience init(name : String) {
        self.init(name: name, age: 1, speed: 0.0)
    }
    
    convenience init(age : Int) {
        self.init(name: "", age: age, speed: 0.0)
    }
    
    convenience init(speed : Double) {
        self.init(name: "", age: 1, speed: speed)
    }
}
*/

//var d1 = Dog()

//println("name=\(d1.name), age=\(d1.age)")

//var d2 = Dog(name: "jack", age: 2)
//println("name=\(d2.name), age=\(d2.age)")

// 存储属性：只能由父类先初始化，再由子类初始化

/*
class Animal {
    var age: Int
    let life: Int
    
    init()  {
        self.age = 1
        self.life = 1
    }
}

class Dog : Animal {
    init()  {
        super.init()
        self.age = 20
        
        self.life = 2
    }
}

var d = Dog()
println(d.age)*/

/*
class Dog {
    deinit {
        println("Dog---死了")
    }
}

func newDog()
{
    var d = Dog()
}

println("newDog---0")
newDog()
println("newDog---1")
*/

//class Dog : Animal {
//    init()  {
//        super.init()
//        println("Dog-init")
//    }
//}

class Animal {
    var age : Int
    init() {
        self.age = 1
    }
}
class Dog : Animal {
    init()  {
        super.init()
        self.age = 2
    }
}



