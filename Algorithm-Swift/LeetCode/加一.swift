//
//  加一.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/16.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 加一 {
    
    func plusOne(_ digits: [Int]) -> [Int] {
        
        if digits.count == 0 {
            return digits
        }
        
        var digits = digits
        
        if digits[digits.count - 1] != 9 {
            digits[digits.count - 1] += 1
            return digits
        }
        
        var forward = true      // 进位标识
        
        for i in (0 ..< digits.count).reversed() {
            
            if forward {
                if digits[i] == 9 {
                    digits[i] = 0
                    forward = true
                } else {
                    digits[i] += 1
                    forward = false
                }
            }
            
        }
        
        if forward {
            digits.insert(1, at: 0)
        }
        
        return digits
    }
    
}
