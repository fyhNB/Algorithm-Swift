//
//  回文数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/13.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 回文数 {
    
    func isPalindrome(_ x: Int) -> Bool {
        
        if x < 0 {
            return false
        }
        
        var tmpX = x
        var reverse = 0
        
        while tmpX != 0 {
            let num = tmpX % 10
            tmpX /= 10
            reverse = reverse * 10 + num
        }
        
        if reverse == x {
            return true
        }
        
        return false
        
    }
    
}
