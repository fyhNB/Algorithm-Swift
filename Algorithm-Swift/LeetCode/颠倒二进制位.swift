//
//  颠倒二进制位.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 颠倒二进制位 {
    
//    func reverseBits(_ n: Int) -> Int {
//
//        var n = n
//        let heighMask = 1 << 31
//        var result = 0
//        var moveCount = 0
//
//        while n != 0 {
//            let heigh = (n & heighMask) >> (31 - moveCount)
//            result |= heigh
//            n <<= 1
//            moveCount += 1
//        }
//
//        return result
//
//    }
    
//    func reverseBits(_ n: Int) -> Int {
//
//        var result = 0
//
//        for i in 0 ..< 32 {
//            result |= (1 & (n >> i)) << (32 - i)
//        }
//
//        return result
//
//    }
    
    func reverseBits(_ n: Int) -> Int {
        
        var n = (n << 16) | (n >> 16)
        
        n = ((n & 0x00ff00ff) << 8) | ((n & 0xff00ff00) >> 8)
        n = ((n & 0x0f0f0f0f) << 4) | ((n & 0xf0f0f0f0) >> 4)
        n = ((n & 0x33333333) << 2) | ((n & 0xcccccccc) >> 2)  
        n = ((n & 0x55555555) << 1) | ((n & 0xaaaaaaaa) >> 1)

        return n
        
    }
    
}
