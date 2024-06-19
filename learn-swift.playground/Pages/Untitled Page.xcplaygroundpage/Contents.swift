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
