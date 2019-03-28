import UIKit


var number1:Int = 11
var number2:Int = 11


if number1 + number2 > 21 {
    if number1 == 11 {
        number1 = 1
    } else if number2 == 11 {
        number2 = 1
    }
    
    if number1 + number2 > 21 {
        print(0)
    } else {
        print(number1 + number2)
    }
} else {
    print(number1 + number2)
}
