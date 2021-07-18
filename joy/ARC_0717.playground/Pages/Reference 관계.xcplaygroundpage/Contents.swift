import Foundation

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name)이 initialization! 메모리에 allocate!!")
    }
    deinit {
        print("\(name)이 deinit, 메모리에서 deallocated!")
    }
}

var refer1: Person?
var refer2: Person?
var refer3: Person?

refer1 = Person(name: "Joy")
//refer1 = nil

refer2 = refer1
refer3 = refer1
refer1 = nil
refer2 = nil
refer3 = nil
