import UIKit

let numbers = [3,5,1,4]
for number in numbers {
    var stars = " "
    for _ in 1...number{
        stars += "*"
    }
    print(stars)
}
