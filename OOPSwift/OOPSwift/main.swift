//
//  main.swift
//  OOPSwift
//
//  Created by Murat Yilmaz on 14.06.2023.
//

import Foundation

print("Hello, World!")

var guitarist = Musician(name: "murat", age: 38, instrument: "Elektro", type: .Gitaris)
guitarist.testFonk();

func calculate(num1 : Int, num2: Int, myFunc: (Int, Int) -> Int) -> Int{
    return myFunc(num1, num2)
}

var result : Int = calculate(num1: 10, num2: 20, myFunc: {
    let res = ($0/2)  * $1
    return res
})

print(result)

func sum(num1 : Int, num2: Int ) -> Int{
    return num1 + num2
}

var result2 : Int = calculate(num1: 10, num2: 20, myFunc: sum)
print(result2)
