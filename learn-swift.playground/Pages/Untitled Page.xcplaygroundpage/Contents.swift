import UIKit


// var let
var name = "Thanh"
let age = 21
print("My name is \(name), Im \(age) year old")


// data type
let pi:Double = 3.14
var isLoggedIn:Bool = true
var address:String = "Quang Ngai"
// type annotation :Doube, :String


// operator
// condition
if age > 18 {
    print("You are an adult")
} else {
    print("You are a minor")
}

let score = 12
switch score {
case 10...20:
    print("A")
case 0..<10:
    print("B")
default:
    print("C")
}

// Array =>
var arr1 = [1, 4, 5, 6]
var arr2:Any = [1, 2, "thanh", "chanh"]
var arr3:[Double] = [1.3, 2.5, 6.4]

for i in arr1 {
    print(i)
}
    // method in array
arr1.append(2)
arr1.count
arr1.insert(123, at: 0)
arr1.remove(at: 2) // return value is removed


// Set
// là 1 kiểu dữ liệu cấu trúc dùng để lưu trữ tập hợp các giá trị có giá trị duy nhất, không theo thứ tự
var team = Set<String>()
var team2:Set = ["a", "b", "c", "c"]
// nếu trùng thì nó chỉ hiện 1 cái
print(team2)


// Dictionary
var dic1 = [1: "DHT", 2:"PDC", 3:"TDT"]
var dic2:[Int:String] = [:]
var dic3 = [Int:String]()
var name1 = dic1[1]
let myDictionary:[String: Any] = ["name":"DHT", "age": 21]
dic1[4] = "LTG"
print(dic1)
var keys = Array(dic1.keys)
var values = Array(dic1.values)
var removeValue = dic1.removeValue(forKey: 2)
print(removeValue!)
var reset123 = dic1.sorted(by: {
    dic1, dic2 in
    return dic1.key > dic2.key
})
print(reset123)


// Tuple
// là danh sách các giá trị, có thể có nhiều kiểu dữ liệu khác nhau
// tuple != dictionary | tuple:() | dictionary:[]
var tp1:(name: String, age: Int)
tp1 = ("DHT", 21)
tp1 = ("Hoangthanh", 21)
tp1.age = 20
tp1.0
tp1.1
var tp2 = ("A", "B", "C", ("a", "b", "c"))
tp2.3.1
print(dic1[1]!)

// => nếu lấy 1 giá trị từ dictionary thì nó sẽ trả về kiểu optional
// => vì vậy để ta có thể có thể lấy được giá trị(hay gọi là giải nén giá trị) ta phải thêm dấu chấm than


// optionals
// nó là 1 cái khái niệm để biểu thị 1 biến có thể có giá trị hoặc không
// việc kiểm tra và xử lý biến optional sẽ giúp tránh tình trạng lỗi nullpointer
// ta sẽ sử dụng cấu trúc if let để kiểm tra
func optionals(_ value: Int? = nil) -> Int {
    if let value {
        return value*2
    } else {
        return 0
    }
}
var opt1:String? = "hello"
print(type(of: opt1))
if let optnew = opt1 {
    print("optnew: \(optnew)")
    print("type of: \(type(of: optnew))")
} else {
    print("opt1 is nil")
}
// => sử dụng cấu trúc if let để giải nén biến đó
// => thì ở đây đã giải nén biến opt1 (loại optionals string) và gán vào optnew nên là lúc này optnew là kiểu string

// sử dụng ! để cam kết rẳng giá trị đó không bằng nil
var opt2:Int? = 123
print(opt2!)
// nếu muốn biến luôn luôn có giá trị thì dùng ??
var number:Int? = nil
var number2 = number ?? 2
print(number2)

// Function and closures
func greet(name: String) -> String {
    return "Hello, \(name)"
}
print(greet(name: "HoangThanh"))

let add: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    return a+b
}

let result = add(1, 2)
print(result)


// function
// parameter and argument
// parameter: là biến được khai báo trong định nghĩa 1 hàm hoặc phương thức
// => hoạt động như 1 vị trí giữ chỗ cho mà giá trị cụ thể sẽ được truyền vào khi hàm hoặc phương thức được gọi
// argument là cái giá trị cụ thể được truyền vào khi hàm/method đc gọi
func add(a: Int, b:Int) -> Int {
    return a+b
}
print(add(a: 12, b: 12))
func greet123(name: String) {
    print("Hello \(name)")
}
greet123(name: "HoangTHanh")
// variadic parameter
// => có thể nhận tham số tùy số lượng, ưng nhập bao nhiêu thì nhập
func inputName(names:String...) -> Void {
    for item in names {
        print(item, terminator: "\t")
    }
}
inputName(names: "thanh", "chanh", "tinh")

// inout parameter
// này thì giống con trỏ, keyword: inout
func swap(a: inout Int, b: inout Int) -> Void {
    var temp = a
    a = b
    b = temp
}
var asw = 123
var bsw = 321
swap(a: &asw, b: &bsw)
print("\(asw) - \(bsw)")

func testFunc() {
    "hello"
}
print(type(of: testFunc()))

func add2(_ a: Int, _ b: Int) -> Int {
    return a+b
}
add2(12, 32)
// default value parameter
func defaultValue(b:Int = 123) -> Int {
    return b
}
print(defaultValue())

// function type
// (Int, Int) -> Int
print(type(of: add))

// closures
let addClo = {
    (a:Int, b:Int) -> Int in
    let sum = a + b
    return sum
}

let closuresExam = {
    (a:Int) -> Int in
    let total = a+123
    return total
}

print(type(of: addClo))

var closuresTest1 = [3, 6, 8, 12, 2, 1]
var resetCLosures = closuresTest1.sorted { (s1: Int, s2: Int) in
    return  s1 > s2
}
print(resetCLosures)

class Search {
    func start(withCompleted: (_ res:Int, _ err:Int) -> (Bool) ) {
        let res = 1
        let err = 2
        print(withCompleted(res, err))
    }
}

func main() {
    let search = Search()
    search.start { res, err in
        return res > 1
    }
}
main()
// ở phần định nghĩa hàm thì ta thấy, tham số truyền vào hàm sẽ là closures, closures này thì gồm có 2 tham số và kiểu trả về là bool.
// xong bên trong hàm sẽ sử dụng(gọi lại cái closures đó để giải quyết vấn đề mà hàm nó thực hiện)
// rồi t gọi hàm thì ta cần truyền vào 1 closures để hàm có thể thực hiện.
// => ngẫm kĩ lại các ví dụ này


// tralling closures => closures được viết sau dấu ngoặc của lời gọi hàm

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
//    c1
//    func incrementer() -> Int { // this closure
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//
//     c2
    return {
        runningTotal += amount
        return runningTotal
    }
}

let incrementTest = makeIncrement(forIncrement: 20)
let incrementTest2 = makeIncrement(forIncrement: 10)
print(type(of: makeIncrement))
print(type(of: incrementTest))
incrementTest()
incrementTest()
incrementTest()
// ex:
var closures: [() -> Void] = []

for i in 1...3 {
    closures.append {
        print(i)
    }
}

closures[0]() // Output: 4
closures[1]() // Output: 4
closures[2]() // Output: 4

// ex biến đổi array thành array moi chua true false
var listNumber = [1, 5, 6, 3, 8]
let boolNumber = listNumber.map {
    (n) -> Bool in
    return n > 3
}
print(boolNumber)

// ex
var listNum = [1: "one", 2: "two", 3: "three", 4: "four", 5:"five", 6:"six", 7: "seven", 8:"eight", 9: "nine"]

var listNumChange = [133, 63, 86]

let convertNum = listNumChange.map { n -> String in
    var output = ""
    var number = n
    repeat {
        output = " " + listNum[number % 10]! + output
        number = number / 10
    } while number > 0
    return output
}

// enum
// enum là 1 loại dữ liệu, cho phép định nghĩa 1 tập hợp các giá trị để tạo các biến, hằng có thể chứa 1
enum CompassPoint {
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.north
print(direction)
//    đính dữ liệu
enum Bardcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productCode = Bardcode.upc(123, 123, 431, 77)
//productCode = .qrCode("#fdskgsdf")
switch productCode {
case .qrCode(let productCode):
    print("product code: \(productCode)")
case .upc(let n1, let n2, let n3, let n4):
    print("product code: \(n1), \(n2), \(n3), \(n4)")
}


enum OderStatus {
    case pending
    case processing
    case shipped(trackingNumber: String)
    case delivered(signature: String)
    case cancelled(reason: String)
}

// sử dụng nó cho 1 đơn hàng cụ thể
var orderStatus: OderStatus = .pending
// don hang bat dau dc xu li
orderStatus = .processing
// don hang da dc gui di va co so theo doi
orderStatus = .shipped(trackingNumber: "09183453")
// don hang da duoc giao va ki nhan boi nguoi nhan
orderStatus = .delivered(signature: "hoangthanh")
// don hang bi huy do ly do cu the
orderStatus = .cancelled(reason: "out of stock")
print(orderStatus)


// raw value
//




