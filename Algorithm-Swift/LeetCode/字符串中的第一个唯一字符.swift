//
//  字符串中的第一个唯一字符.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 字符串中的第一个唯一字符 {
    
    func firstUniqChar(_ s: String) -> Int {
        let charArray = Array(s)
        var dict = [Character : Int]()
    
        for char in charArray {
            dict[char] = (dict[char] ?? 0) + 1
        }
        
        for i in 0 ..< s.count {
            if dict[s[s.index(s.startIndex, offsetBy: i)]] == 1 {
                return i
                
            }
        }
        
        return -1
    }
    
}
