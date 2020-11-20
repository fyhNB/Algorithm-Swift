//
//  4的幂.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class _4的幂 {
    
    func isPowerOfFour(_ num: Int) -> Bool {
        if num <= 0 {
            return false
        }
        
        return num & -num == num ? (num & -num & 0xaaaaaaaa == 0) : false
    }
    
}
