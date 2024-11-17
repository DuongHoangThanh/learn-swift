import UIKit

// map

// filter
// non filter-function
let digit = [1, 5, 3, 6, 8, 23, 22, 44]
var even: [Int] = []
for item in digit {
    if item%2 == 0 {
        even.append(item)
    }
}
print(even)
// filter function
let even2 = digit.filter {
    $0 % 2 == 0
}
print(even2)


// reduce
