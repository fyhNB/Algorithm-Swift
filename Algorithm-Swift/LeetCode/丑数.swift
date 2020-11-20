//
//  丑数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 丑数 {
    func isUgly(_ num: Int) -> Bool {
        if num == 0 {
            return false
        }
        
        if num == 1 {
            return true
        }
        
        var flag = false
        
        if num % 2 == 0 {
            flag = isUgly(num / 2)
        } else if num % 3 == 0 {
            flag = isUgly(num / 3)
        } else if num % 5 == 0 {
            flag = isUgly(num / 5)
        }
        
        return flag
    }
}
