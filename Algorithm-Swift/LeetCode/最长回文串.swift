//
//  最长回文串.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最长回文串 {
    
    func longestPalindrome(_ s: String) -> Int {
        let charArray = Array(s)
        var dict = [Character : Int]()
        var result = 0
        
        for char in charArray {
            dict[char] = (dict[char] ?? 0) + 1
        }
        
        var oddCount = 0
        
        for value in dict.values {
            if value % 2 == 0 {
                result += value
            } else {
                oddCount += 1
                result += value - 1
            }
        }
        
        return oddCount == 0 ? result : result + 1
    }
    
}
