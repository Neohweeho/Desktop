import UIKit

for number in 1...20{
    if number % 3 == 0{
        print("Fizz")
        
        if number % 5 == 0{
            print("Buzz")
            
            if number % 3 & 5  == 0{
                print("FizzBuzz")
            }
        }
    }
}
