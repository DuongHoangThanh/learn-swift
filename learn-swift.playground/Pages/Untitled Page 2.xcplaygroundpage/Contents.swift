import UIKit

class Student {
    var completionSum: ((Int) -> (Int))?
    
    func calculateSum(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func totalSum() {
        let result = calculateSum(num1: 9, num2: 8)
        completionSum?(result)
    }
}

let student = Student()

student.completionSum = {
    (result) in
    print(result)
    return result
}
student.totalSum()

func fetchData(completion: (String) -> String) {
    let data = "get data from api: loading..."
    print(completion(data))
}

func handle(data: String) -> String {
    let newData = data + "3452345"
    return newData
}

fetchData {
    (data) in
    let newData = data + "#2341h45hwe82"
    return newData
}

fetchData(completion: {
    (data) in
    let newData = data + "#n1kj2349489aw"
    return newData
})

func fetchData2(data: (String) -> Void) {
    data("hello")
}

fetchData2 {
    (data: String) in
    print("Chao xin")
    print("Xin chao")
}


// noescape
func getSumOf(array: [Int], handler: (Int) -> Void) {
    var sum = 0
    for i in array {
        sum += i
    }
    handler(sum)
}

getSumOf(array: [1, 4, 2], handler: {
    (sum) in
    var newSum = sum * 10 / 34
    print(newSum)
})


// escape
func getSumOf2(array: [Int], handel: @escaping (Int) -> Void) {
    var sum = 0
    for i in array {
        sum += i
    }
}

// Struct
var dicEx1 = ["name": nil, "sdt":123]
print(dicEx1["name"] as Any)

class Animal {
    var id:Int {
        willSet(newId) {
            print("old value: \(id) | new value: \(newId)")
        }
        didSet {
            print("after set value \n old value: \(oldValue) | new value \(id)")
        }
    }
    var name:String
    var year:Int
    
    init(_ id: Int,_ name: String,_ year:Int) {
        self.id = id
        self.name = name
        self.year = year
    }
    
    func sound() {
        print("sound ...")
    }
}

class Cat:Animal {
    var address:String
    
    init(id: Int,name: String,year: Int, address:String) {
        self.address = address
        super.init(id, name, year)
    }
    
    override func sound() {
        print("meo meo")
    }
}

var cat1 = Cat(id: 1, name: "my dieu", year: 2015, address: "QN")
cat1.sound()
cat1.id = 123

// Protocol
protocol ICFly {
    func fly()
    func add(a: Int, b:Int)
}

class Bird:ICFly {
    func add(a: Int, b: Int) {
        print(a+b)
    }
    
    func fly() {
        print("I can fly")
    }
}

protocol FullyNamed {
    var fullName: String {get}
}

struct Person: FullyNamed {
    var fullName: String
}

let join = Person(fullName: "John Appleseed")

class StartShip: FullyNamed {
    var prefix:String?
    var name:String
    init(prefix: String?=nil, name: String) {
        self.prefix = prefix
        self.name = name
    }
    
    var fullName: String {
        return (prefix != nil ? prefix! + " " :"") + name
    }
}

var ncc1701 = StartShip(name: "Enterprise")

// optional protocol
@objc protocol P {
    func show()
    @objc optional func sum(array: [Int]) -> Int
}

class A: P {
    func show() {
        print("Show")
    }
}


// delegation pattern
struct Cookie {
    var size:Int = 5
    var hasChocolateChips:Bool = false
}

class Bakery {
    
    var delegate: BakeryDelegate?
    
    func makeCookie() {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true
        
        delegate?.cookieWasBaked(cookie)
    }
}

protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}

class CookieShop: BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie) {
        print("Yay! A new cookie was baked, with size \(cookie.size)")
    }
}

let shop = CookieShop()

let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()


protocol IntroDelegate {
    func sliderWasDone(message: String)
}

class IntroViewController: UIViewController {
    
}

protocol TaskDelegate {
    func didFinishTask(task: String)
}

class Worker {
    var delegate: TaskDelegate?
    
    func startTask() {
        print("Worker is starting the task...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.delegate?.didFinishTask(task: "Task 1 completed!")
        }
    }
}

class Manager:TaskDelegate {
    func didFinishTask(task: String) {
        print("Did Finish Task!")
    }
    
}

let worker1 = Worker()
let manager1 = Manager()
worker1.delegate = manager1
worker1.startTask()


// closures
func implClosures1() {
    print("This is closures1")
}

var myClosures1: () -> Void

myClosures1 = implClosures1
myClosures1()


class StudentNew1 {
    var studentName: ((String, Int) -> String) = { (classId:String, studentName:Int) -> String in
        return "Duong Hoang Thanh"
    }
    
    var studentName2 = { (classId: String, studentName: String) -> String in
        return "Hello"
    }
    
    var studentName3:String?
}

class StudentNew2 {
    var completionSum: ((Int) -> (Int))?
    
    func calculateSum(num1: Int, num2:Int) -> Int {
        return num1 + num2
    }
    
    func totalSum() {
        let result = calculateSum(num1: 9, num2: 8)
        completionSum?(result)
    }
    
    func thinkingAboutYourTeacher(name: String, completion: @escaping (String) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            completion("hello")
        }
    }
    
}

let studentNew2 = StudentNew2()
studentNew2.completionSum = {
    (result) -> Int in
    return result*2
}

studentNew2.totalSum()



class Student55 {
var completionSum: ((Int) -> (Int))?
func calculateSum(num1: Int, num2: Int) -> Int {
return num1 + num2
}
func totalSum() {
    let result = calculateSum(num1: 9, num2: 8)
completionSum?(result)
}
}

class UseClosure {
    let student = Student55()
    var totalResult: Int = 0
    init() {
        student.completionSum = { [weak self] (result) -> Int in
        self?.totalResult = result
        print(self?.totalResult ?? "" )
            return 123
        }
    }
}

// generics
protocol Summable {
    static func +(lhs: Self, rhs: Self) -> Self
}

func add<T:Summable>(x: T, y:T) -> T {
    return x + y
}

struct Queue<Element> {
    var elements: [Element] = []
    
    mutating func enqueue(newElement: Element) {
        elements.append(newElement)
    }
    
    mutating func dequeue() -> Element? {
        elements.remove(at: 0)
    }
    
    func show() {
        for i in elements {
            print(i, terminator: " ")
        }
    }
}

var q = Queue<Int>()
q.enqueue(newElement: 1)
q.enqueue(newElement: 4)
q.show()
q.dequeue()
q.show()

// Generic in Method
func showData<T>(data: T) {
    print("Data: \(data)")
}
showData(data: "String")

// Generic in TypeData
struct Stack<Element> {
    var items: [Element] = []
    
    mutating func push(item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element? {
        items.popLast()
    }
    
    mutating func show() {
        print("Show Stack: ")
        for i in items {
            print("|------|")
            print("| \(i) |")
            print("|------|")
        }
        print("=========")
    }
}

var intStack = Stack<Int>()
intStack.push(item: 123)
intStack.push(item: 789)
intStack.push(item: 456)
intStack.push(item: 284)
intStack.show()

// Generic with Associated Type

