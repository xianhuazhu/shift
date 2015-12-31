// Playground - noun: a place where people can play

/*
class Dog {
    var name: String = "wangcai"
    init() {
        println("Dog---init")
    }
}


class Person {
    // 存储属性
    var age: Int = 1
    var height: Double = 1.5
    let life = 1
    lazy var dog: Dog = Dog()
}

var p = Person()
*/
//p.dog
//p.dog
//p.age = 20
//p.height = 1.8
//p.life
//
//p.height
//p.age

/*
class Square {
    // 边长
    var width: Double = 0
    // 周长
    var girth: Double {
        get {
            return width * 4
        }
//        set(newGirth) {
//            width = newGirth / 4
//        }
        set {
            width = newValue / 4
        }
    }
}
*/

//var s = Square()
//s.girth = 40.0
//s.width = 20
//s.girth
//s.girth = 200
//s.girth = 40
//s.width = 10
//s.girth = s.width * 4

class Square {
    // 边长
    var width: Double = 0
    // 周长
    var girth: Double {
        get {
            return girth
        }
        set {
            girth = newValue
        }
    }
}

var s = Square()
s.girth
