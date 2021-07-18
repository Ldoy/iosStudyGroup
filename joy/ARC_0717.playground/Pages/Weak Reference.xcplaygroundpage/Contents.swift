//: [Previous](@previous)

import Foundation

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("Person클래스이닛")
    }
    var apartment: Apartment?
    deinit { print("\(name)는 deinit 되었어요!")}
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
        print("Apartment클래스이닛")
    }
    weak var tenant: Person?
    deinit {
        print("아파트 \(unit)이 deinit 되었어요")
    }
    
}


var joy: Person?
var unit4A: Apartment?

joy = Person(name: "joy")

unit4A = Apartment(unit: "4A")


joy!.apartment = unit4A
unit4A!.tenant = joy

joy = nil
unit4A?.tenant?.name // joy는 사라졌지만 name에 가지고 있음 
unit4A = nil

//: [Next](@next)
