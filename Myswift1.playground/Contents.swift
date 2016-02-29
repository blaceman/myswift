//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//swift100个实用必备tip
                                     //1.Selector
//在swift中没有了@selector 我们要生成一个selector只能使用字符串
//在 Swift 中没有 @selector 了,我们要生成一个 selector 的话现在只能使用字符串。Swift 里对应原来 SEL 的类型是一个叫做 Selector 的结构体,它提供了一个接受字符串的初 始化方法。像上面的两个例子在 Swift 中等效的写法是:
func callMe() { //...
}
func callMeWithParam(obj: AnyObject!) { //...
}
let someMethod = Selector("callMe")
let anotherMethod = Selector("callMeWithParam:")
func turnByAngle(theAngle: Int, speed: Float) { //...
}
let method = Selector("turnByAngle:speed:")


//最后需要注意的是,selector 其实是 Objective-C runtime 的概念,如果你的 selector 对应 的方法只在 Swift 中可见的话 (也就是说它是一个 Swift 中的 private 方法),在调用这个 selector 时你会遇到一个 unrecognized selector 错误:
//正确的做法是在 private 前面加上 @objc 关键字,这样运行时就能找到对应的方法了。*/


                                     /*2.柯里化(Currying)
一、简 短的解释起来，函数柯里化就是，你有一个接收参数的函数，你只提供给它部分的参数，它不是立刻执行而是返回给你一个新的函数，这个新的函数接收剩下的参 数，其内部则指向原始函数。当提供的参数完整了才会最终执行原始函数。
二、Swift 里可以将方法进行柯里化 (Currying)12,也就是把接受多个参数的方法变换成接受 第一个参数的方法,并且返回接受余下的参数并且返回结果的新方法。举个例子,Swift 中我们可以这样写出多个括号的方法:
*/

//一,例子
func addTwoNumber(a:Int)(num:Int) -> Int {
   return a + num
}
//然后通过只传入第一个括号的参数进行调用,这样将返回另外一个方法
//let add = addTwoNumber(4)(num: 6)
let addToFour = addTwoNumber(4)  //addtoFour 是一个Int -> Int 类型的函数
let result = addToFour(num: 6)
//柯里化是一种量产相似方法的好办法,可以通过柯里化一个方法模板来避免写出很多 重复代码,也方便了今后维护。

                                       //3.将protocol 的方法声明为mutating
//一、Swift的potocol不仅可以被class类型发现 也适合struct enum 因为这个原因,我们在写给别人用的接口时需要多考虑是否使用mutating来修饰方法 比如定义 为 mutating func myMethod().  Swift的木他听关键字的修饰是为了能够改struct或是enum 的变量 所以如果你没在接口方法里写 mutating 的话,别人如果用 struct 或者 enum 来实现这个接口的话,就不能在方法里改变自己的变量了。比如下面 的代码
protocol Vehicle
{
    var numberOfWheels:Int{get}
    var color:UIColor{get set}
    mutating func changeColor()
}
struct MyCar:Vehicle {
    let numberOfWheels = 4
    var color = UIColor.blueColor()
    mutating func changeColor() {
        color = UIColor.redColor()
    }
}

//如果把 protocol 定义中的 mutating 去掉的话,MyCar 就怎么都过不了编译了:保持现有 代码不变的话,会报错说没有实现接口;如果去掉 mutating 的话,会报错说不能改变 结构体成员。这个接口的使用者的忧伤的眼神,相信你能想象得出。
//另外,在使用 class 来实现带有 mutating 的方法的接口时,具体实现的前面是不需 要加 mutating 修饰的,因为 class 可以随意更改自己的成员变量。所以说在接口里用 mutating 修饰方法,对于 class 的实现是完全透明,可以当作不存在的。











