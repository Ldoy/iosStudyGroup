//: [Previous](@previous)

import Foundation

class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
        print("Customer클래스이닛")
    }
    deinit { print("\(name)가 디이닛 돼요")}
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
        print("CreditCard클래스이닛")
    }
    deinit { print("Card #\(number)가 디이닛 돼요") }
}

var john: Customer?
john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678, customer: john!)
john = nil // john 사라지면 모두 사라짐



//: [Next](@next)
