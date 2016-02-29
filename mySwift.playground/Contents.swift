//: Playground - noun: a place where people can play
//第一章
import UIKit
var str = "Hello,playground"
print("Hello,Swift")
//let 常量   不可改变
//var 变量    可改变
let maxNum = 1000
var index = 0
var x = 0.0 , y = 0.0
//type safety 类型安全的语言

var websiteName:String
websiteName = "www"
//基本类型:Int Double(64位浮点数 精确到小数点15位)/Float(32位 精确到小数点6位) String

let decimalInt:Int = 17
let binaryInt:Int = 0b10001//二进制
let octalInt:Int = 0o21//八进制
let hexadecinalnt:Int = 0x11//十六进制
//NSString *str
let float_a = 0.012
let float_b = 1.2

let bignum_a = 1000000
let bignum_b = 1_000_000

let num_a:Float = 1
let num_b:Int = Int(1.2)

let 姓名 = "mylove"
姓名 + "你好"

let imtureVar = true
let imafalseVar = false

if imtureVar{
    print("i am true")
}

else{
    print("i am false");
}
var a:Int = 1
if a == 1{
    print("i am true")
}


//Tuples 元组:将不同的值合成一个数据
let regisstrationResult = (isRegisterSuccess:true,nickname:"我的女神",gender:"女")
let connectionResult = (404,"Not Fount")

//例子
let(isRegisterSuccess,nickname,gender) = regisstrationResult
isRegisterSuccess
nickname
gender

regisstrationResult.0
regisstrationResult.1
regisstrationResult.2

regisstrationResult.isRegisterSuccess
regisstrationResult.nickname
regisstrationResult.gender

//使用下划线(_)忽略部分数值
let loginResult = (true,"我的女神")
let (isLoginSuccess,_) = loginResult
if isLoginSuccess{
    print("登陆成功")
}


//Optionals 可选值
//1.有一个值或没有值(基础类型也可以为nil)

var b:Int
b = 1

var imOptionvariable:Int?
imOptionvariable = 12

let userInput = "abc"
var age = userInput

let a1 = 5
let b1 = 2
var c1 = 0

var str1 = "Hello playground"
let str2 = "i am stuends"

var c:Character = "!"
str1 += "c"

c = "?"

//区间运算符
//Range Opetator
//闭区间:[a,b]  a...b
//前闭后开区间[a,b) a..b  不能用


for index in 1...10
{
    index
}

let courseNames = ["wan","ba","shao","nian"]
for i in 1...courseNames.count - 2
{
    courseNames[i]
}

var str3 = String()

str3.isEmpty

str3 = "Hello Playground"
//forin循环遍历

str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())

//数组
var array = ["A","B",12]

var array2:[String] = ["Aa","Bb","Cc"]

var array3:Array<String> = ["1","B","C"]

array[0] = "1"

var array4 = [String]()

var array5 = Array<String>()

array4.count

array4.isEmpty

array4.append("D")


array4 += ["A","M"]

array4.insert("Hello", atIndex: 0)

array4.removeAtIndex(0)

array4.removeLast()

array4[0...1] = ["L","M"]

for index in 0...array4.count - 1
{
    print(array4[index])
}

for item in array4
{
    print(item)
}

for(index,item) in EnumerateSequence(array4)
{
    print("\(index) - \(item)")
}

let colors = ["abc":(red:93)]

var backView = UIView(frame:CGRectMake(0,0,320,20))
backView.backgroundColor = UIColor.redColor()

var rating:Character = "A"

switch rating
{
    case "A","a":
    print("great")
    case "B":
    print("Just so-so")
    default:
    print("bad")
}

//区间判断
var score = 90
switch score
{
case 0:
    print("you are an egg")
case 1...59:
    print("you are bad")
case 60...79:
    print("Just so-so")
case 80...100:
    print("great")
default:
    print("something wrong with your score")
    
}

//元祖判断
var coordinate = (1,1)
switch coordinate
{
case (0,0):
    print("origin")
    fallthrough
case (_,0):
    print("x-axis")
case (0,_):
    print("y-axis")
case (-2...2,-2...2):
    print("near origin")
default:
    print("wrong")
}


let coordinate1 = (3,3)
switch coordinate1
{
case let (x,y) where x == y:
    print("x == y")
case let (x,y) where x == -y:
    print("x == -y")
case let (x,y):
    print("x != y")
    
}

let arr = NSArray(contentsOfURL: NSURL(string: "http://project.lanou3g.com/teacher/UIAPI/MusicInfoList.plist")!)
arr

//闭包表达式语法
//func funcName(参数) ->函数返回值{

//}
//{(参数) ->返回值类型 in
//   执行语句
//}
let sayhello = {
    print("hello World")
}

sayhello()
let add:(Int,Int)->Int = { (a: Int, b: Int) -> Int in
    return a + b
}

add(3,5)

//闭包表达式的回调用法

func showArraySort(array: [Int]){
    for x in array{
        print(x)
    }
    
}
func bubbleSort(inout array1:[Int],cmp:(Int,Int) -> Int){
   let cnt = array1.count
    for var i = 1; i < cnt;i++ {
        for var j = 0; j < cnt - i; j++ {
            if cmp(array1[j] , array1[j + 1]) == -1 {
                let t = array1[j]
                array1[j] = array1[j+1]
                array1[j+1] = t
            }
        }
    }
}

var array1 = [20 ,2 ,3,70,8]
showArraySort(array1)
//let intCmp = {
//    (a:Int,b:Int)-> Int in
//    if a > b {
//        return -1
//    }
//    else if a < b{
//        return 1
//    }else{
//        return 0
//    }
//}
bubbleSort(&array1,cmp: {
  //swift类型推断
    if $0 > $1 {
        return -1
    }
    else if $0 < $1 {
        return 1
    }else{
        return 0
    }
})
showArraySort(array1)
//bubbleSort(&array1, cmp: <#T##(Int, Int) -> Int#>)
//尾随闭包
bubbleSort(&array1){
    //swift类型推断
    if $0 > $1 {
        return -1
    }
    else if $0 < $1 {
        return 1
    }else{
        return 0
    }
}
//嵌套函数

func bubbleSortFunc(inout array1:[Int]){
    let cnt = array1.count
    func swapValue(inout a:Int,inout b:Int){
        print(cnt)
        let t = a
        a = b
        b = t
    }
    for var i = 1; i < cnt;i++ {
        for var j = 0; j < cnt - i; j++ {
            if array1[j] > array1[j + 1] {
                swapValue(&array1[j], b: &array1[j+1])
            }
        }
    }
}
var array0 = [5,21,10,2,3]
bubbleSortFunc(&array0)
//闭包值捕获
func getInFunv(inc:Int)->(Int)->Int{
    var mt = 10
    func incFunc(v:Int)->Int{
        mt++
        return inc+v+mt
    }
    return incFunc
}
let inFunc1 = getInFunv(3)

print(inFunc1(10))
print(inFunc1(10))


//函数的内部参数和外部参数
func divisionOpertation(dividend dividend:Double, divisor:Double)->Double{
    return dividend / divisor
}
let res = divisionOpertation(dividend: 3.5, divisor: 1.2)


//常量参数 变量参数
func swap(inout a:Int,inout b:Int){
    let t = a
    a = b
    b = t
}
//输出函数(inout)
var x1 = 10
var y1 = 19
swap(&x1, &y1)
print(x1,y1)
//变参函数(参数个数变化,作为函数参数放在最末尾)
func add(array:Int...)->Int{
    var sum = 0
    for i in array{
        sum += i
    }
    return sum
}
print(add(2,3,4,5))

//swift枚举(一等类型)
//Class one
enum Method{
//    case Add
//    case Sub
//    case Mul
//    case Div
    case Add ,Sub,Mul,Div
}

var m0:Method = .Add
var m1 = Method.Sub

//结构体和类的初步
//1.定义
struct Rect {
    var Width:Double = 0.0
    var Height:Double = 0.0
    //成员方法可以访问使用成员属性
    func getWidth()->Double{
        return Width
    }
    func show(){
        print("width=\(Width)")
    }
}
//2.结构体实例和属性访问
var rect:Rect = Rect()
rect.Height = 10
rect.Width = 10

//3.结构体的构造器
//结构体逐一成员构造器
var rect1:Rect = Rect(Width: 9, Height: 9)

rect1.getWidth()
rect1.show()
//值类型(值拷贝) 不是同一块内存
var rect2 = rect1

rect2.show()
//(1)存储属性
class Person{
    var name:String = "ZhangSan"
    var age:Int = 10
}
var p = Person()
p.name = "List"
p.age = 10
//延迟存储属性
struct myStudent{
    var name:String
    var chinese:Double
    var math:Double
}
class MyClass {
    var menbers:[myStudent] = []
    //延迟属性
      lazy var score:Double = self.getScore()
    func getScore() -> Double{
        var t:Double = 0
        for i in menbers{
            t += i.chinese
            t += i.math
        }
        if menbers.count > 0 {
        return t / Double(menbers.count)
        } else {
            return 0
        }
    }
    func show() {
       
    }
}
//计算属性(setter,getter,没有存储功能)
struct MyRect {
    //属性观察器
    
    //1.willSet 设置新值时调用
    //2.didSet
    var origion:(x:Double,y:Double) = (0,0){
        willSet{
            print("willSet")
        }
        didSet{
            print("didSet")
        }
    }
    var size:(w:Double,h:Double) = (0,0)
    var center:(x:Double,y:Double) {
        //只有getter为只读属性
        get{
            return(origion.x + size.w/2,origion.y + size.h / 2)
        }
        set(n){
           origion.x = n.x - size.w / 2
            origion.y = n.y - size.h / 2
        }
    }
}
var myrect = MyRect()
myrect.size = (100,100)
myrect.origion = (0,0)
myrect.center = (myrect.origion.x + myrect.size.w / 2,myrect.origion.y + myrect.size.h / 2)

//类型属性
class typeProperty{
    var property:Int = 0
    //类型属性
    static var staticProperty:Int = 0
    static func sayhi(){
        
    }
    class func sayHello() {
        
    }
    
}
var object = typeProperty()
object.property = 10
typeProperty.staticProperty = 10

//单例

class sayHiToMyLove{
    //最新
    static let sharemanager = sayHiToMyLove()
}

//类目
extension sayHiToMyLove{
    func sayMylove(){
        print("I love you")
    }
}
let sayhitomylove = sayHiToMyLove.sharemanager
sayhitomylove.sayMylove()
//协议
protocol People{
    func getName()->String
}
class Man: People {
    func getName() -> String {
        return "ZhangSan"
    }
}
//命名空间
//class com{
//    class woshishab {
//        class hello {
//            func sayHello(){
//                print("Hello shab")
//            }
//        }
//    }
//}
class com{
    class woshishab {
        
        
    }
}
extension com.woshishab{
    class hello {
        func sayhello(){
            print("hello woshishab")
        }
    }
}
var h = com.woshishab.hello()
h.sayhello()

class music {
     var h = String()
    init(str:String){
        
    }
    func sayHello(){
        
    }
}
//协议
//protocol 声明一系列的方法,属性,下标等用来约束其遵循者进而保证遵循者能够完成限定工作.协议本身不实现任和功能,他仅仅描述了遵循着的实现 协议能够被类,结构体枚举所遵循,若某各类遵循协议,则该类型遵循某个协议
//协议的语法
protocol SomeProtocol{
    //协议内容
    func passStr(str:String)
}
//在类,结构体,枚举的名称后加上协议名称,中间以冒号分割即可以实现协议
struct SomeStruct:SomeProtocol{
    func passStr(str: String) {
        _ = str
    }
}
//属性要求
//[协议]能够要求其遵循着必须含有一些特定的名称和类型[实例属性]和[类型属性],也能够要求协议的读写权限(getter setter) 但他不能要求是储存属性还是读写属性
//协议传值
class People1{
    var delegate:SomeProtocol?
    func sayHello(){
        self.delegate?.passStr("hello!my name is xieyi")
    }
}
class People2:SomeProtocol {
    var str:String = "1234"
    func name(){
        let peopele = People1()
        peopele.delegate = self
    }
    func passStr(str: String) {
        self.str = str
        print(str)
    }
}
let people1 = People1()
people1.sayHello()
//seletor:@seletor(方法名) 在swift 中用"方法名"代替@seletor(方法名)

//swift 对? 与 ! 的理解
//?就是可空类型
var index2: Int? = nil

//一致的定义方式： var message: Optional<String> = nil
//可以理解为一种装箱操作（对String类型进行一个封装）
var message: String? = nil

/* message = "123"*/

//!号可以理解为拆箱操作，对之前封装的String对象解除封装，并将其赋予String变量
//前提： 拆箱后（接触封装）的变量不能事nil，否则会出错
if message != nil {
    
    var newMessage: String = message!
    print(newMessage)
    
} else {
    print("Message is nil")
}

//泛型函数
class swapab:NSObject{
    // T:节点类型
    func swapTwoValues<T>(inout a:T,inout b:T){
        let tempararyA = a
        a = b
        b = tempararyA
    }
}
var swapA = "我是A"
var swapB = "我是B"

let swapAB = swapab()
swapAB.swapTwoValues(&swapA, b: &swapB)
swapA
swapB
//这个函数的泛型版本使用了节点类型命名（通常此情况下用字母T来表示）来代替实际类型名（如Int、String或Double）。节点类型名并不是表示T必须是任何类型，但是其规定a和b必须是同一类型的T，而不管T表示任何类型。只有swapTwoValues函数在每次调用时所传入的实际类型决定了T所代表的类型。
//
//另外一个不同之处在于这个泛型函数名后面跟着的节点类型名(T)是用尖括号括起来的()。这个尖括号告诉Swift那个T是swapTwoValues函数所定义的一个节点类型。因为T是一个节点，Swift不会去查找每一个命名为T的实际类型。




//结构体 枚举的实例方法 默认情况下不可以修改值类型的属性 为了能够修改 必须在方法定以前加mutating
struct Stack<T> {
    var items = [T]()
     mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
    
}
var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
//T定义了一个名为“某种类型T”的节点提供给后来用。这种将来类型可以在结构体的定义里任何地方表示为“T”。在这种情况下，T在如下三个地方被用作节点：
//1.创建一个名为items的属性，使用空的T类型值数组对其进行初始化；
//2.指定一个包含一个参数名为item的push方法，该参数必须是T类型；
//3.指定一个pop方法的返回值，该返回值将是一个T类型值。

//由于Stack是泛型类型，所以在Swift中其可以用来创建任何有效类型的栈，这种方式如同Array和Dictionary。



//类型约束语法
//swapTwoValues函数和Stack类型可以作用于任何类型，不过，有的时候对使用在泛型函数和泛型类型上的类型强制约束为某种特定类型是非常有用的。类型约束指定了一个必须继承自指定类的类型参数，或者遵循一个特定的协议或协议构成。

//你可以写一个在一个类型参数名后面的类型约束，通过冒号分割，来作为类型参数链的一部分。这种作用于泛型函数的类型约束的基础语法如下所示（和泛型类型的语法相同）：
//func someFunction<T: SomeClass, U: SomeProtocol>(someT: T, someU: U) {
//    // function body goes here
//

//上面这个假定函数有两个类型参数。第一个类型参数T，有一个需要T必须是SomeClass子类的类型约束；第二个类型参数U，有一个需要U必须遵循SomeProtocol协议的类型约束。
func someFiunction<T:UIView>(view:T){
    
}
//where语句

/*要想对类型形参及其关联类型指定额外要求，可以在泛型形参列表之后添加where子句。where子句由关键字where及其后的用逗号分割的多个要求组成。

where子句中的要求用于指明该类型形参继承自某个类或遵守某个协议或协议的一部分。尽管where子句有助于表达类型形参上的简单约束(如T: Comparable等同于T where T: Comparable，等等)，但是依然可以用来对类型形参及其关联约束提供更复杂的约束。如，<T where T: C, T: P>表示泛型类型T继承自类C且遵守协议P。
func simpleMin<T where T:Comparable,T:NSObject>(x: T, y: T) -> T {
if x < y {
return y
}
return x
}

如上所述，可以强制约束类型形参的关联类型遵守某个协议。<T: Generator where T.Element: Equatable>表示T遵守Generator协议，而且T的关联类型T.Element遵守Eauatable协议(T有关联类型是因为Generator声明了Element，而T遵守Generator协议)。

也可以用操作符==来指定两个类型等效的要求。例如，有这样一个约束：T和U遵守Generator协议，同时要求它们的关联类型等同，可以这样来表达：<T: Generator, U: Generator where T.Element == U.Element>。

当然，替代类型形参的类型实参必须满足所有类型形参所要求的约束和要求。

泛型函数或构造器可以重载，但在泛型形参子句中的类型形参必须有不同的约束或要求，抑或二者皆不同。当调用重载的泛型函数或构造器时，编译器会用这些约束来决定调用哪个重载函数或构造器。

泛型类可以生成一个子类，但是这个子类也必须是泛型类。*/

//Objective-C 和 Swift 在底层使用的是两套完全不同的机制，Cocoa 中的 Objective-C 对象是基于运行时的，它从骨子里遵循了 KVC (Key-Value Coding，通过类似字典的方式存储对象信息) 以及动态派发 (Dynamic Dispatch，在运行调用时再决定实际调用的具体实现)。而 Swift 为了追求性能，如果没有特殊需要的话，是不会在运行时再来决定这些的。也就是说，Swift 类型的成员或者方法在编译时就已经决定，而运行时便不再需要经过一次查找，而可以直接使用(静态派发)。
















