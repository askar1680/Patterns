//
//  Authorization.swift
//  SwiftProgrammingLanguage
//
//  Created by Аскар on 11/25/18.
//  Copyright © 2018 askar.ulubayev168. All rights reserved.
//

import Foundation

indirect enum ArithmeticExrepssion {
    case number(Int)
    case addition(ArithmeticExrepssion, ArithmeticExrepssion)
    case multiplication(ArithmeticExrepssion, ArithmeticExrepssion)
}

// Test

let five = ArithmeticExrepssion.number(5)
let four = ArithmeticExrepssion.number(4)

let sum = ArithmeticExrepssion.addition(five, four)
let product = ArithmeticExrepssion.multiplication(sum, ArithmeticExrepssion.number(2))

func evaluate(_ expression: ArithmeticExrepssion) -> Int{
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

//print(evaluate(product))
