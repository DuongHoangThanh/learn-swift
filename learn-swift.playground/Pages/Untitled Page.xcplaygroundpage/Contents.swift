import UIKit


// var let
var name = "Thanh"
let age = 21
print("My name is \(name), Im \(age) year old")
// january - february - march - april - may - june - july - august - september - october - november - december

// var let new
var nameStudent = "DHT"
let year = 2003
print("Hello, I'm \(nameStudent) -  \(year)")
print("""
    xin chao moi nguoi da den voi chanel cua
        *******
         *****
          ***
           * 
    Hoang Thanh
""")

// data type
let pi:Double = 3.14
var isLoggedIn:Bool = true
var address:String = "Quang Ngai"
// type annotation :Doube, :String

// casting
let str1 = "hello"
let num1 = 123
let testCasting = str1 + String(num1)

// operators
let apple = 3
let oranges = 5
let appleSummary = "I have \(apple) apples. "
let b = 10
let a = 5
print(a<b)


// condition
if age > 18 {
    print("You are an adult")
} else {
    print("You are a minor")
}

var listName = ["DHT", "TT", "KK"]
for name in listName {
    print(name)
}

var dictionaryExample = ["cat": 9, "dog":2, "fish": 6]
for item in dictionaryExample {
    print("\(item.key) - \(item.value)")
}

for index in 1...10 {
    print(index)
}

var i = 1
while (i<5) {
    print("This is TRUE ")
    i+=1
}
repeat {
    print("this is first")
} while (false)

switch "asdfasd" {
case "monday":
    print(2)
case "tuesday":
    print(3)
case "wednesday":
    print(4)
case "thursday":
    print(5)
case "friday":
    print(6)
case "saturday":
    print(7)
case "sunday":
    print(8)
default:
    print("Nothing")
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

var arr5 = [1, 2, 4]
var arr6:[Double] = [1.2, 3.5, 5.3]
arr5.append(2)
arr5 += [1,2 ,5]
arr5[1] = 5
print(arr5)

for item in arr5 {
    print(item)
}

for i in arr1 {
    print(i)
}
// method in array
arr1.append(2)
arr1.count
arr1.insert(123, at: 0)
arr1.remove(at: 2) // return value is removed
arr1.removeLast()

for (index, value) in arr1.enumerated() {
    print("Item \(index + 1):  \(value)")
}


// Set
// là 1 kiểu dữ liệu cấu trúc dùng để lưu trữ tập hợp các giá trị có giá trị duy nhất, không theo thứ tự
var team = Set<String>()
var team2:Set = ["a", "b", "c", "c"]
// nếu trùng thì nó chỉ hiện 1 cái
print(team2)

// Set new
let newString = "Hhhh hasdh"
let arrayString = Array(newString)
let setString = Set(arrayString)
print(setString)
var setNew:Set = [1,3,5,5]
print(setNew)


// Dictionary
var dic1 = [2: "DHT", 1:"PDC", 3:"TDT", 6:"NTPD"]
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
print(dic1)
var reset123 = dic1.sorted(by: {
    dic1, dic2 in
    return dic1.key < dic2.key
})
print(reset123)

// Dictionary new
var dictionaryNew1 = [1: "2", 2:"name"]
print(dictionaryNew1[2]!)
print(type(of: dictionaryNew1[1]!))
var dictionaryAny:[String:Any] = ["id": 1, "username": "DHT"]
print(dictionaryAny)




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
print("opt1: \(opt1!)")
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

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        return
    }
    
    print("I hope the weather is nice in \(location)")
}
greet(person: ["name": "Hoang Thanh", "location": "Quang Ngai"])

var optionalString:String
var optionalString2:String? = nil
optionalString2 = "Hello"
print("optionalString2: \(optionalString2!)")

let optionalChaining:String? = "new opt"
let count = optionalChaining?.count

let newOpt = optionalChaining ?? "hello"
print(newOpt)

var testForin1 = "hello cin chafo tat car moi nguoi"
for i in testForin1 {
    print(i)
}
var arrayTestForIn = [1, 2, 45, 5, 62]
for (index, value) in arrayTestForIn.enumerated() {
    print("index: \(index) - value: \(value)")
}

class Stock {
    var code:String?
    var price:Double?
    
    init(code: String? = nil, price: Double? = nil) {
        self.code = code
        self.price = price
    }
}

func getStock() -> Stock? {
    let stock = Stock()
    return stock
}

if getStock()?.code == "hello" {
    print("this is code = hello")
}





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

var studentName = {
    (nameString: String) -> String in
    return nameString
}
print(studentName("Thanh"))

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
// enum là 1 loại dữ liệu, cho phép định nghĩa 1 tập hợp các giá trị
// co nghĩa cho phép định nghĩa 1 nhóm các giá trị có liên quan lại với nhau.
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
// nó là giá trị cố định được liên kết với mõi case trong enum
enum Planet2: Int {
case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
// co case tim rawvalue
let earth = Planet2.earth.rawValue
print(earth)

let possiblePlanet = Planet2(rawValue: 6)
print(type(of: possiblePlanet))

// Recursive enum
enum A {
    case number(Int)
    indirect case addition(A, A)
    indirect case mutiplication(A, A)
}

let five = A.number(5)
let four = A.number(4)
let sum = A.addition(five, four)
let product = A.mutiplication(four, five)

func evaluate(_ expression: A) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .mutiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))

// ex:
enum NetError {
    case success
    case failure(Int, String)
}

func checkNetError(_ active: NetError) {
    switch active {
    case .success:
        print("Success")
    case let .failure(code, des):
        print("Error: \(code) - \(des)")
    }
}

var loadImage = NetError.success
loadImage = .failure(1234, "Failured")
checkNetError(loadImage)


// struct vs class
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

// => struct and enum are value type

struct PersonStruct {
    var name = ""
    var age = 0
}

class PersonClass {
    var name = ""
    var age = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let pClass = PersonClass(name: "thanh", age: 21)
let pClass2 = pClass
pClass2.age = 22
let pStruct = PersonStruct(name: "thanh1", age: 21)
let pStruct2 = pStruct
pStruct2.age


// toán tử === , so sánh tham chiều, nó có cùng tham chiếu không
if pClass === pClass2 {
        print("Cung tham chieu den 1 doi tuong")
}


// properties
// 2 loại property:
// - stored property: lưu trữ (class and struct)
// - computed property: tính toán (class, struct, enum), không lưu trữ giá trị mà chỉ tính toán thông qua get set
// lazy => khi dùng thì mới khởi tạo nó
// ex:
struct Point {
    var x = 0.0, y = 0.0
    
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width/2)
            origin.y = newCenter.y - (size.height/2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)

struct Rect1 {
    var width = 0.0, height = 0.0
    var area: Double {
        return width*height
    }
}

let rec1 = Rect1(width: 10.0, height: 20.0)
print("Area: \(rec1.area)")

// Property observers : theo doi property
// khi nào thì 1 properties được đặt lại giá trị
// willSet, newValue
// didSet, oldValue

// static: sử dụng cho thuộc tính hoặc phương thức của 1 loại mà không cần phải taoh thể hiện của loại đó => là chung
// sẽ có 2 loại instance properties vs type properties



// method
// trong struct các thuộc tính không thể thay đổi bất kì 1 thuộc tính nào của cấu trúc => muốn làm thì phải thêm mutating
// và để gọi phương thức mutating thì cũng cần 1 biến có thể thay đổi được (var)
struct Test {
    var a = 0
    mutating func increment(by amount: Int) {
        a += amount
    }
}
//let test = Test() => error
var test = Test()
test.increment(by: 10)


// subscript
// 1 cách để truy cập và gián các giá trị cho các phần tử của tập hợp nào đó bằng cách sử sử dụng dấu []



// inheritance
class Vehicle {
    var currentSpeed = 0.0
    var description : String {
        return "traveling at \(currentSpeed)"
    }
    
    init(currentSpeed: Double = 0.0) {
        self.currentSpeed = currentSpeed
    }
    
    func makeNoise() {
        print("test make noise")
    }
}

class ByCicle: Vehicle {
    var hasbaket = false
    init(hasbaket: Bool = false, currentSpeed: Double) {
        self.hasbaket = hasbaket
        super.init(currentSpeed: currentSpeed)
    }
}
let b1 = ByCicle(hasbaket: true, currentSpeed: 10.0)
b1.currentSpeed = 10
print(b1.description)


class Animal {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func makeSound() {
        print("Hello world")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("meo meo")
    }
}

var cat1 = Cat(name: "tieu my", age: 4)
cat1.makeSound()

// initialization and deinitialization

// new abstract



// Polymorphism
// Abstract
// Protocol

protocol Drawable {
    func draw()
}

class Circle: Drawable {
    func draw() {
        print("Draw in circle")
    }
}

class Rectangle: Drawable {
    func draw() {
        print("Draw in Rectangle")
    }
}

func renderShape(shape: Drawable) {
    shape.draw()
}

let circle = Circle()
let rect = Rectangle()

renderShape(shape: circle)
renderShape(shape: rect)


// generics
protocol Summable {
    static func +(num1: Self, num2: Self) -> Self
}

func addTwoNumber<T: Summable>(a: T, b: T) -> T {
    return a + b
}

extension  Double: Summable {}

let n1 = 5.0
let n2 = 2.0
let total = addTwoNumber(a: n1, b: n2)
print(total)
print("Hello ")



