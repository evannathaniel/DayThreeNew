import UIKit
//array,set,dictionary,struct,class
var greeting = "Hello"

//set = You use a set instead of an array when you need to test efficiently for membership and you aren’t concerned with the order of the elements in the collection, or when you need to ensure that each element appears only once in a collection.
let ingredients: Set = ["cocoa beans", "cocoa butter", "salt"]
if ingredients.contains("sugar") {
    print("No thanks, too sweet.")
}else{
    print("Thank you")
}

//array


//dictionary
var responseMessages = [200: "OK",
                        403: "Access forbidden",
                        404: "File not found",
                        500: "Internal server error"]
let httpResponseCodes = [200, 403, 301]
for code in httpResponseCodes {
    if let message = responseMessages[code] {
        print("Response \(code): \(message)")
    } else {
        print("Unknown response \(code)")
    }
}

var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 17],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
for key in interestingNumbers.keys {
    interestingNumbers[key]?.sort(by: >)
}
print(interestingNumbers["primes"]!)


//struct Structures and classes in Swift have many things in common. Both can:Define properties to store values, Define methods to provide functionality, Define subscripts to provide access to their values using subscript syntax, Define initializers to set up their initial state, Be extended to expand their functionality beyond a default implementation, Conform to protocols to provide standard functionality of a certain kind

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

//class -> Inheritance enables one class to inherit the characteristics of another. *Type casting enables you to check and interpret the type of a class instance at runtime. *Deinitializers enable an instance of a class to free up any resources it has assigned. *Reference counting allows more than one reference to a class instance.

class Bike {

  // properties with no default values
  var name: String
  var gear: Int

  // assign value using initializer
  init(name: String, gear: Int){
    self.name = name
    self.gear = gear
  }
}

// object of Person with custom initializer
var bike1 = Bike(name: "BMX Bike", gear: 2)

print("Name: \(bike1.name) and Gear: \(bike1.gear)")

class Animal {

  // properties and method of the parent class
  var name: String = ""

  func eat() {
    print("I can eat")
  }
}

// inherit from Animal
class Dog: Animal {

  // new method in subclass
  func display() {
      
    // access name property of superclass
    print("My name is ", name);
      self.eat()
  }
}

// create an object of the subclass
var labrador = Dog()

// access superclass property and method
labrador.name = "Rohu"

// call subclass method
labrador.display()
