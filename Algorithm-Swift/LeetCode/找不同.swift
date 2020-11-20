//
//  找不同.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/25.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 找不同 {
    
//    func findTheDifference(_ s: String, _ t: String) -> Character {
//
//        var dict = [Character : Int]()
//
//        for char in Array(s) {
//            dict[char] = (dict[char] ?? 0) + 1
//        }
//
//        for char in t {
//            dict[char] = (dict[char] ?? 0) - 1
//            if dict[char] == -1 {
//                return char
//            }
//        }
//
//        return Character("")
//
//    }
    
    func findTheDifference(_ s: String, _ t: String) -> Character {
        
        var result: UInt8 = 0
        
        for char in s {
            result ^= char.asciiValue ?? 0
        }
        
        for char in t {
            result ^= char.asciiValue ?? 0
        }
        
        return Character(Unicode.Scalar(result))
        
    }
    
}
