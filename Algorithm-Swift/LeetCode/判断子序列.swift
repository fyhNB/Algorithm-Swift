//
//  判断子序列.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/25.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 判断子序列 {
    
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.count == 0 {
            return false
        }
        
        var sIndex = 0
        
        for char in t {
            if s[s.index(s.startIndex, offsetBy: sIndex)] == char {
                sIndex += 1
                if sIndex == s.count {
                    return true
                }
            }
        }
        
        return false
    }
    
}
