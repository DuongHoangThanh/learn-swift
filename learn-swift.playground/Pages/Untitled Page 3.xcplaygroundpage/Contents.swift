import UIKit


// sort
let array1 = [2, 5, 1, 4, 7, 9, 3, 8]
let sortedArray = array1.sorted { $0 > $1 }
let testSort1 = array1.sorted(by: { (s1: Int, s2: Int) -> Bool in
        return s1 > s2
})

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

let even3 = digit.filter { (s1: Int) -> Bool in
    return s1 % 2 == 0
}


// reduce

