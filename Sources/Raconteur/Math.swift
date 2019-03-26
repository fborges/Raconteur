//
//  Math.swift
//  Raconteur
//
//  Created by Felipe Borges  on 26/03/19.
//

import Foundation



public func add<N: Numeric>(_ a: N, _ b: N) -> N {
    return a + b
}

public func add<N: Numeric>(_ a: N) -> (N) -> N {
    return { add(a, $0) }
}

public func add<N: Numeric>(_ operands: N...) -> N {
    return operands.reduce(0, +)
}

public func dec<N: Numeric>(_ a: N) -> N {
    return a - 1
}

public func divide(_ a: Int) -> (Int) -> Int {
    return { a / $0 }
}

public func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

public func inc<N: Numeric>(_ a: N) -> N {
    return a + 1
}

public func mathMod<T>(_ a: T, _ b: T) -> T where T: Modulable, T: Numeric, T: Comparable {
    if b < 1 {
        return -1
    }
    
    return ((a % b) + b) % b
}

public func mean<T>(_ elements: T...) -> Int where T: SignedInteger, T: Divisible {
    return Int(elements.reduce(0, +)) / elements.count
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

public func modulo<N: Modulable>(_ a: N, _ b: N) -> N {
    return a % b
}

public func modulo<N: Modulable>(_ a: N) -> (N) -> N {
    return { modulo(a, $0) }
}

public func multiply<N: Numeric>(_ a: N, _ b: N) -> N {
    return a * b
}

public func multiply<N: Numeric>(_ a: N) -> (N) -> N {
    return { multiply(a, $0) }
}

public func negate<N: SignedNumeric>(_ a: N) -> N {
    return -a
}

public func product<N: Numeric>(_ elements: N...) -> N {
    return elements.reduce(1, multiply)
}

public func subtract<N: Numeric>(_ a: N, _ b: N) -> N {
    return a - b
}

public func subtract<N: Numeric>(_ a: N) -> (N) -> N {
    return { subtract(a, $0) }
}

public func sum<N: Numeric>(_ elements: N...) -> N {
    return elements.reduce(0, add)
}

public protocol Modulable {
    static func %(lhs: Self, rhs: Self) -> Self
}

public protocol Divisible {
    static func /(lhs: Self, rhs: Self) -> Self
}

extension Int: Divisible, Modulable {}
extension Int8: Divisible, Modulable {}
extension Int16: Divisible, Modulable {}
extension Int32: Divisible, Modulable {}
extension Int64: Divisible, Modulable {}
extension Float: Divisible {}
extension Double: Divisible {}
extension CGFloat: Divisible {}
