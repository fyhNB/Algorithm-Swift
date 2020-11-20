//
//  字符串相加.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 字符串相加 {
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        
        let longger = Array(num1.count >= num2.count ? num1 : num2)
        let shorter = Array(num1.count < num2.count ? num1 : num2)
        
        var result = ""
        
        var carry = 0
        for i in 0 ..< shorter.count {
            let cur = Int(String(shorter[shorter.count - 1 - i] ))! + Int(String(longger[longger.count - 1 - i]))! + carry
            if cur >= 10 {
                result = "\(cur - 10)" + result
                carry = 1
            } else {
                result = "\(cur)" + result
                carry = 0
            }
        }
        
        var morePtr = longger.count - shorter.count - 1
        while morePtr >= 0 {
            let cur = Int(String(longger[morePtr]))! + carry
            if cur >= 10 {
                result = "\(cur - 10)" + result
                carry = 1
            } else {
                result = "\(cur)" + result
                carry = 0
            }
            morePtr -= 1
        }
        
        if carry == 1 {
            result = "\(carry)" + result
        }
            
        return result
    }
    
}
