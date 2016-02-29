//: Playground - noun: a place where people can play
//第一章
import UIKit
var str = "Hello,playground"
print("Hello,Swift")
                                       //let 常量   不可改变
let maxNum = 1000
let x1 = 0.0 , y1 = 0.0
//-------------------------------------------//-------------------------------------------
                                     //var 变量    可改变
var index = 0
var x = 0.0 , y = 0.0
//-------------------------------------------//-------------------------------------------

//type safety 类型安全的语言
var websiteName:String
websiteName = "www"

                          //基本类型:Int Double(64位浮点数 精确到小数点15位)/Float(32位 精确到小数点6位)
let decimalInt:Int = 17
let binaryInt:Int = 0b10001//二进制
let octalInt:Int = 0o21//八进制
let hexadecinalnt:Int = 0x11//十六进制
//NSString *str
let float_a = 0.012
let float_b = 1.2

let bignum_a = 1000000
let bignum_b = 1_000_000


                                           //类型转换
let num_a:Float = 1
let num_b:Int = Int(1.2)
//-------------------------------------------//-------------------------------------------


                                            //Bool类型值
let imtureVar:Bool = true
let imafalseVar = false
//-------------------------------------------//-------------------------------------------

                                             //if语法
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
//-------------------------------------------//-------------------------------------------

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
//-------------------------------------------//-------------------------------------------

                                            //Optionals 可选值
//1.有一个值或没有值(基础类型也可以为nil)

var b:Int
b = 1

var imOptionvariable:Int!
var imOptionvariable1:Optional<String>
imOptionvariable = 12
//装箱
//拆包
//swift 问号和叹号的理解

//"!"表示这个可选变量存在，可以使用，如果用"!"访问不存在的可选变量会导致一些错误
//
//"?"表示这个变量可能不存在，如果不存在，"?"所在语句后面的内容都不会执行
//
//!是一个强制拆包,告诉编译器我绝对肯定代码能够执行, 如: strValue!.hashValue ,如果不能执行则报错。
//
//?是表示一个不确定,strValue?.hashValue 就等于OC的if(strValue){  [strValue hashValue]; } 有就执行,有没后面代码就不执行。 不会报错。

//-------------------------------------------//-------------------------------------------


                                              //String
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
//-------------------------------------------//-------------------------------------------


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

str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
//-------------------------------------------//-------------------------------------------

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
//-------------------------------------------//-------------------------------------------

                                //for in
//1.区间运算符
for index in 0...array4.count - 1
{
    print(array4[index])
}

for item in array4
{
    print(item)
}

//EnumerateSequence
for(index,item) in EnumerateSequence(array4)
{
    print("\(index) - \(item)")
}

let colors = ["abc":(red:93)]

var backView = UIView(frame:CGRectMake(0,0,320,20))
backView.backgroundColor = UIColor.redColor()
//-------------------------------------------//-------------------------------------------


                                           //switch
//1.普通用法
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


//2.区间判断
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

//3.元祖判断
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

//4.where
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
//-------------------------------------------//-------------------------------------------

let arr = NSArray(contentsOfURL: NSURL(string: "http://project.lanou3g.com/teacher/UIAPI/MusicInfoList.plist")!)
//-------------------------------------------//-------------------------------------------

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


func showArraySort(array: [Int]){
    for x in array{
        print(x)
    }
}
//闭包表达式的回调用法
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

//普通的用法 少人用mafan
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
//-------------------------------------------//-------------------------------------------

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
//-------------------------------------------//-------------------------------------------

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
//-------------------------------------------//-------------------------------------------

//函数的内部参数和外部参数
                                       //外部参数  //内部参数
func divisionOpertation(dividend dividend:Double, divisor:Double)->Double{
    return dividend / divisor
}
let res = divisionOpertation(dividend: 3.5, divisor: 1.2)
//-------------------------------------------//-------------------------------------------
                              //常量参数//let  变量参数//inout
func swap(inout a:Int,inout b:Int){
    let t = a
    a = b
    b = t
}
//输出函数(inout)
var x2 = 10
var y2 = 19
swap(&x2, &y2)
print(x2,y2)
//-------------------------------------------//-------------------------------------------

                           //变参函数(参数个数变化,作为函数参数放在最末尾)
func add(array:Int...)->Int{
    var sum = 0
    for i in array{
        sum += i
    }
    return sum
}
print(add(2,3,4,5))
//-------------------------------------------//-------------------------------------------
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
//..................................
//-------------------------------------------//-------------------------------------------

                                  //结构体和类的初步(值类型)
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
var rect = Rect()
rect.getWidth()
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
//-------------------------------------------//-------------------------------------------
                                                //属性
//(1)存储属性
class Person{
    var name:String = "ZhangSan"
    var age:Int = 10
}
var p = Person()
p.name = "List"
p.age = 11

//(2)延迟存储属性
struct myStudent{
    var name:String
    var chinese:Double = 10
    var math:Double = 10
}
let mystudent = myStudent(name: "luo", chinese: 70.0, math: 75.0)
class MyClass {
    var menbers:Array<myStudent> = []
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
let myclass = MyClass()
myclass.score
myclass.menbers.append(mystudent)
myclass.score


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
        print("hi")
    }
    class func sayHello() {
        print("hello")
    }
    
}
var object = typeProperty()
object.property = 10
typeProperty.staticProperty = 10
typeProperty.sayHello()
typeProperty.sayhi()
//-------------------------------------------//-------------------------------------------
                                                 //单例设计模式
class sayHiToMyLove{
    //最新
    func sayhi(){
        print("hi my love")
    }
    static let sharemanager = sayHiToMyLove()
}
//-------------------------------------------//-------------------------------------------
                                                //类目
extension sayHiToMyLove{
    func sayMylove(){
        print("I love you")
    }
}
let sayhitomylove = sayHiToMyLove.sharemanager
sayhitomylove.sayMylove()
sayhitomylove.sayhi()
//-------------------------------------------//-------------------------------------------
                                                 //协议
protocol People{
    func getName()->String
}
class Man: People {
    func getName() -> String {
        return "ZhangSan"
    }
}
//-------------------------------------------//-------------------------------------------
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
//-------------------------------------------//-------------------------------------------


//协议
//protocol 声明一系列的方法,属性,下标等用来约束其遵循者进而保证遵循者能够完成限定工作.协议本身不实现任和功能,他仅仅描述了遵循着的实现 协议能够被类,结构体枚举所遵循,若某各类遵循协议,则该类型遵循某个协议
//协议的语法
protocol SomeProtocol{
    //协议内容 mutating表示能够在结构体或枚举中实现
   mutating func passStr(str:String)
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
    func passStr(str1: String) {
        self.str = str1
        print(str1)
    }
}
let people2 = People2()
people2.name()
let people1 = People1()
people1.sayHello()
//-------------------------------------------//-------------------------------------------
//seletor:@seletor(方法名) 在swift 中用"方法名"代替@seletor(方法名)
//-------------------------------------------//-------------------------------------------
                       //swift  Optional对? 与 ! 的理解
//?就是可空类型
var index2: Int?
//一致的定义方式： var message: Optional<String> = nil
//?可以理解为一种装箱操作（对String类型进行一个封装）
var message: String?
/* message = "123"*/
//!号可以理解为拆箱操作，对之前封装的String对象解除封装，并将其赋予String变量
//前提： 拆箱后（接触封装）的变量不能事nil，否则会出错
if message != nil {
    var newMessage: String = message!
    print(newMessage)
    
} else {
    print("Message is nil")
}
//-------------------------------------------//-------------------------------------------
                                             //泛型函数

 // 泛型类
class swapab<T>{
    // 泛型函数   T:节点类型
    func swapTwoValues<T>(inout a:T,inout b:T){
        let tempararyA = a
        a = b
        b = tempararyA
    }
}
var swapA = "我是A"
var swapB = "我是B"

let swapAB = swapab<NSObject>()
swapAB.swapTwoValues(&swapA, b: &swapB)
swapA
swapB



//泛型结构体
struct Stack<T> {
    var items = [T]()
    //结构体 枚举的实例方法 默认情况下不可以修改值类型的属性 为了能够修改 必须在方法定以前加mutating
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

//由于Stack是泛型类型，所以在Swift中其可以用来创建任何有效类型的栈，这种方式如同Array和Dictionary。

//类型约束语法
class Function{
    func someFunction<T: NSObject, U: NSObject>(someT: T, someU: U) {
        print("\(someT) \(someU)")
    }
        //where语句
    func someFunction1<T:UIView where T:SomeProtocol,T:NSObject>(view:T){
            print("\(view)")
   }

}

let function = Function()
function.someFunction("11", someU: "22")
//function.someFunction1("22")  因为没有遵循SomeProtocol 所以报错

//替代类型形参的类型实参必须满足所有类型形参所要求的约束和要求。

//泛型函数或构造器可以重载，但在泛型形参子句中的类型形参必须有不同的约束或要求，抑或二者皆不同。当调用重载的泛型函数或构造器时，编译器会用这些约束来决定调用哪个重载函数或构造器。
//泛型类可以生成一个子类，但是这个子类也必须是泛型类。
//-------------------------------------------//-------------------------------------------

//Objective-C 和 Swift 在底层使用的是两套完全不同的机制，Cocoa 中的 Objective-C 对象是基于运行时的，它从骨子里遵循了 KVC (Key-Value Coding，通过类似字典的方式存储对象信息) 以及动态派发 (Dynamic Dispatch，在运行调用时再决定实际调用的具体实现)。而 Swift 为了追求性能，如果没有特殊需要的话，是不会在运行时再来决定这些的。也就是说，Swift 类型的成员或者方法在编译时就已经决定，而运行时便不再需要经过一次查找，而可以直接使用(静态派发)。
//-------------------------------------------//-------------------------------------------
















