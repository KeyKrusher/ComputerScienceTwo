//: Playground - noun: a place where people can play

import UIKit
import Foundation

var myString = "Testing 1"
var yourString = "Testing 2"

let ourStrings = "\(myString) \(yourString)"

let result = 3 + 2 * 8 - 5

var force = 5

var acceleration = 6

var mass = 10

force = mass * acceleration

let inputOne = 10
let inputTwo = 15

inputTwo % inputOne == 5
inputTwo == inputOne
inputOne != inputOne
inputOne >= inputTwo

var answer = 3
answer %= 3
answer - 3
answer * 2

func sayHelloWorld() -> String {
    return "hello, world!"
}
print(sayHelloWorld())

var x = 3
var myAnswer = Int()
answer += x
answer %= 2
answer - x
let finalAnswer = answer * 2

func someFunction(firstName: String, lastName:String) -> String {
    let output = firstName + lastName
    return output
}
//var myFullName = someFunction("Chubz", "Clark")

class ImageObject {
    var x = 27
}

let myThingy = ImageObject()

type(of: myThingy)

var mostPurchased = ["potatoes", "soda", "popcorn", "fruit"]

mostPurchased.append("ice cream")

mostPurchased.append("carrots")

mostPurchased.remove(at: 1)

mostPurchased.append("hummus")

mostPurchased.remove(at: 3)

mostPurchased.append("chips")

mostPurchased.remove(at: 2)

mostPurchased[3]




