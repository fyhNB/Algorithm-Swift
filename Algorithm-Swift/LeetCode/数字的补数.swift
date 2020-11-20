//
//  数字的补数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 数字的补数 {
    func findComplement(_ num: Int) -> Int {
        var complement = ~num
        var mask = 1 << 63;
        var left = complement & mask
        
        while left != 0 {
            complement &= (~mask)
            mask >>= 1
            left = complement & mask
        }
        
        return complement
    }
}
