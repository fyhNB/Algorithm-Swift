//
//  3的幂.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class _3的幂 {
    
    func isPowerOfThree(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        var tmp = n
        while tmp > 1 {
            if tmp % 3 != 0 {
                return false
            }
            tmp /= 3
        }
        
        return true
    }
    
}
