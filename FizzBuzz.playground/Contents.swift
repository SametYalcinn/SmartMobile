import UIKit
var resultFrom3 = 0
var resultFrom5 = 0

for index in 1...100 {
    var output = ""
    var clear = false
    
    
    resultFrom3 = index % 3
    resultFrom5 = index % 5
    
    if resultFrom3 == 0 {
        output+="Fizz"
        clear = true
    }
    if resultFrom5 == 0 {
        output+="Buzz"
        clear = true
    }
    
    if clear == false {
        output = String(index)
    }
    
    print (output)
}
