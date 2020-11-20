//
//  有效的完全平方数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 有效的完全平方数 {
    func isPerfectSquare(_ num: Int) -> Bool {
        var left = 0
        var right = num / 2
        
        while left <= right {
            let mid = (left + right) / 2
            if mid * mid == num {
                return true
            } else if mid * mid < num {
                left = mid + 1
            } else if mid * mid > num {
                right = mid - 1
            }
        }
     
        return false
    }
}
