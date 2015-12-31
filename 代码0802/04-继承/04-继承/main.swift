//
//  main.swift
//  04-继承
//
//  Created by apple on 14-8-2.
//  Copyright (c) 2014年 heima. All rights reserved.
//

class Animal {
    func run() {
        println("Animal--run")
    }
}

class Dog : Animal {
    override func run() {
        super.run()
        println("Dog--run")
    }
}

//var a = Animal()
//a.run()

/*
var d = Dog()
d.run()
*/

/*
class Car {
    var speed: Int {
        set {
            println("Car-->set")
        }
        get {
            return 10
        }
    }
}

class Truck : Car {
    override var speed: Int {
        set {
            super.speed = newValue
            println("Truck-->set")
        }
        get {
            return 20
        }
    }
}
*/

//var c = Car()
//c.speed = 50
//println("speed=\(c.speed)")

//var t = Truck()
//t.speed = 50
//println("speed=\(t.speed)")

/*
class Car {
    final var speed: Int = 10
}

class Truck : Car {
    override var speed: Int {
        get {
            return super.speed
        }
        set {
            if newValue > 100 {
                super.speed = 100
            } else {
                super.speed = newValue
            }
        }
    }
}

var t = Truck()
t.speed = 70
println("speed=\(t.speed)")*/