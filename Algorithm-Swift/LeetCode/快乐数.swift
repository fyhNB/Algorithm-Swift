//
//  快乐数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 快乐数 {
    
    func isHappy(_ n: Int) -> Bool {
        var a = n
        var b = n
        while true {
            a = isHappy_IMPL(a)
            b = isHappy_IMPL(isHappy_IMPL(b))
            if a == 1 || b == 1 {
                return true
            }
            if a == b {
                return false
            }
        }
    }
    
    private func isHappy_IMPL(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
                
        var n = n
        var square = 0
        while n > 0 {
            let cur = n % 10
            square += cur * cur
            n /= 10
        }
        
        return square
    }
    
}
