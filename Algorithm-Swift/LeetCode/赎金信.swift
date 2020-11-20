//
//  赎金信.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 赎金信 {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character : Int]()
        
        for char in ransomNote {
            dict[char] = (dict[char] ?? 0) + 1
        }
        
        for char in magazine {
            if dict[char] != nil {
                dict[char]! -= 1
            }
        }
        
        for value in dict.values {
            if value > 0 {
                return false
            }
        }
        
        return true
    }
    
}
