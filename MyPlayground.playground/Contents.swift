import UIKit

var greeting = "Hello, playground"

/* 1. Написать функцию, которая:
 - Будет просто выводить в консоль ”Hello, world!”
 .
 - Будет принимать аргумент “имя” и выводить в консоль “Hello, имя” (вызов функции
 должен быть следующим - printHi(“Misha”)).
 - Будет принимать аргумент имя и возвращать строку приветствия “Hello! имя”
 .*/

func hi(name: String = "world") {
    print("Hello! /(name)")
}
hi()
hi(name:"Angelina")

        
           


/* 2. Написать функцию, которая принимает две строки и возвращает сумму количества
 символов двух строк.*/

func sum(_ str1: String, _ str2: String){
    print(str1.count + str2.count)
}
sum("Всем", "Привет")

/*3. Написать функцию, которая выводит в консоль квадрат переданного числа.*/

func sq (numb:Int) {
    print (numb^2)
}
sq(numb:6)

/* 4. Создать функции, которые будут суммировать, вычитать, умножать и делить числа
 sum(num1:num2:).*/
func summ(from first: Int , to last: Int) -> Int {
    guard first <= last else { return 0 }
    
    var res = 0
    for i in (first...last) {
        res += i
    }
    return res
}
print (summ(from: 1 , to: 6))
print (summ(from: 7 , to: 1))


func mult(from first: Int , to last: Int) -> Int {
    guard first <= last else { return 0 }
    
    var result = 1
    for i in (first...last) {
        result *= i
    }
    return result
}
print (mult(from: 1 , to: 6))

func dev(from first: Int , to last: Int) -> Int {
    guard first <= last else { return 0 }
    
    var res1 = 1000
    for i in (first...last) {
        res1 /= i
    }
    return res1
}
print (dev(from: 1 , to: 5))

func del(from last: Int , to first: Int) -> Int {
    guard first <= last else { return 0 }
    
    var res2 = 12
    for i in (first...last) {
        res2 -= i
    }
    return res2
}
print (del(from: 0 , to: 4))

/* 5. Создать функцию, которая принимает параметры и вычисляет площадь круга.*/
func squ (p: Double, r: Double) {
    print(p*(r*r))
}
squ(p:3.14 , r:1.5)

/*6. Создать функцию, которая принимает логический тип “ночь ли сегодня” и возвращает
 строку с описанием времени суток.*/

let time = 5
let night = 22
let endNight = 6
if time >= 0 && time < endNight {
    print("night")
} else if time >= endNight && time < night {
    print("day")
} else {
    print("I dont know")
}

/* 7. Создать функцию, принимающую 1 аргумент — число от 0 до 100, и возвращающую
 true, если оно простое, и false, если сложное.*/

func argument (arg: Int) -> Bool {
    guard arg >= 1 else { return false }
    guard arg <= 100 else { return false }
    
    for i in 1..<arg {
        if arg % i == 0 { return false }
    }
    return true
}
argument(arg: 20)
    



/* 8. Создать функцию, принимающую 1 аргумент — номер месяца (от 1 до 12), и
 возвращающую время года, которому этот месяц принадлежит (зима, весна, лето или
 осень).*/

func Year (month: Int) {
    var month = 6
    switch month {
    case 3...5:
        print ("vesna")
    case 6...8:
        print ("leto")
    case 9...11:
        print ("osen")
    case 1, 2, 12:
        print ("zima")
    default:
        print("no")
        
    }
}
print(Year(month: 4))
    
    
    /* 9*. Создать функцию, которая считает факториал введённого числа. */
    
    func fact (nom: Int) -> Int {
        if nom == 0 {
            return 1
        } else {
            return (nom * fact(nom: nom - 1))
        }
        
    }
    print(fact(nom:0))
    print(fact(nom:7))
    
    
    
    /*10*. Создать функцию, которая выводит все числа последовательности Фибоначчи до
     введённого индекса. Например fib(n:6) -> 0, 1, 1, 2, 3, 5, 8
     F(n) = F(n-1) + F(n-2) */
    
    func fibonachi (fib: Int) -> Int {
        if fib == 0 {
            return 0
        } else {
            return fibonachi(fib:fib - 1) + fibonachi(fib:fib - 2)
        }
    }
    
    print(fibonachi(fib:0))
    print(fibonachi(fib:6))
    
    
    
    /* 11*. Создать функцию, которая считает сумму цифр четырехзначного числа,
     переданного в параметры функции*/
    
