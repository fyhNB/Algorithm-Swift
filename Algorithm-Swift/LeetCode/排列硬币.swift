//
//  排列硬币.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/4.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 排列硬币 {
    
//    func arrangeCoins(_ n: Int) -> Int {
//        var result = 0
//        var n = n
//
//        for i in 1 ... Int.max {
//            if n < i {
//                break
//            }
//            n -= i
//            result += 1
//        }
//
//        return result
//    }
    
    func arrangeCoins(_ n: Int) -> Int {
        var left = 1
        var right = n
        
        while left <= right {
            let mid = (left + right) / 2
            let sum = mid * (1 + mid) / 2
            
            if n < sum {
                right = mid - 1
            } else if n == sum {
                return mid
            } else {
                left = mid + 1
            }
        }
        
        return left - 1
    }
}
