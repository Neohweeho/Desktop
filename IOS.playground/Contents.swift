import UIKit

//Declare variable or constant
var number1 = 1;
var number2 = 3.4;
var number3: Double = 2
var string1: String = "Hello world";
var trueorfalse: Bool = true
number1 = 2
let number = 6
let double1:Double = 2.4

Double(number1)+number2
number2 - number3
number2 * number3
number2 / number3
//casting to string
var castString:String = number3.description
number3 = Double(castString)!
var stringMessage = "Welcome, the total is " + number2.description

var stringMessage1 = "Welcome, the total is \(number2)"

var score = 80
if(score >= 80 && score < 100){
    print("A")
}
else if (score >= 60 && score < 80){
    print("B")
}
else {
    print("Invalid")
}

//Array
var array:[String] = ["hello"]
array.append("ali")
array.append("abu")
array.count

for item in array{
    print(item)
}
