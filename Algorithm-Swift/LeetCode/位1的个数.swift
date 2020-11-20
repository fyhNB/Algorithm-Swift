//
//  位1的个数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 位1的个数 {
    
    func hammingWeight(_ n: Int) -> Int {
        
        var n = n
        var count = 0
        
        for _ in 0 ..< 32 {
            if 0x80000000 & n == 0x80000000 {
                count += 1
            }
            n <<= 1
        }
        
        return count
    }
    
}
