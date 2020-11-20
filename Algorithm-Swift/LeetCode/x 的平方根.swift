//
//  x 的平方根.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class x的平方根 {
    
    func mySqrt(_ x: Int) -> Int {
        
        var left = 0
        var right = x
        
        while left <= right {
            let mid = (left + right) / 2
            if mid * mid < x {
                left = mid + 1
            } else if mid * mid > x {
                right = mid - 1
            } else {
                return mid
            }
        }
        
        return right
        
    }
    
}
