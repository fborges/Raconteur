//
//  Math.swift
//  Raconteur
//
//  Created by Felipe Borges  on 26/03/19.
//

import Foundation

public func add(_ a: Int) -> (Int) -> Int {
    return { a + $0 }
}

public func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

public func add(_ operands: Int...) -> Int {
    return operands.reduce(0, +)
}

public func dec(_ a: Int) -> Int {
    return a - 1
}

public func divide(_ a: Int) -> (Int) -> Int {
    return { a / $0 }
}

public func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

public func inc(_ a: Int) -> Int {
    return a + 1
}

public func mathMod(_ a: Int, _ b: Int) -> Int {
    if b < 1 {
        return -1
    }
    
    return ((a % b) + b) % b
}

public func mean(_ elements: Int...) -> Int {
    return elements.reduce(0, +) / elements.count
}

public func median(_ elements: Int...) -> Int {
    let sortedList = elements.sorted()
    let count = sortedList.count
    let width = 2 - sortedList.count % 2
    
    if width != 0 {
        return sortedList[sortedList.count / 2 + width]
    } else {
        return mean(sortedList[count/2], sortedList[count/2 - 1])
    }
}

func modulo(_ a: Int, _ b: Int) -> Int {
    return a % b
}

func modulo(_ a: Int) -> (Int) -> Int {
    return { modulo(a, $0) }
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func multiply(_ a: Int) -> (Int) -> Int {
    return { multiply(a, $0) }
}

func negate(_ a: Int) -> Int {
    return -a
}

func product(_ elements: Int...) -> Int {
    return elements.reduce(1, multiply)
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func subtract(_ a: Int) -> (Int) -> Int {
    return { subtract(a, $0) }
}

func sum(_ elements: Int...) -> Int {
    return elements.reduce(0, add)
}
