//
//  两整数之和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 两整数之和 {
    
    func getSum(_ a: Int, _ b: Int) -> Int {
        let carry = a & b
        if carry == 0 {
            return a ^ b
        }
        
        return getSum(a ^ b, carry << 1)
    }
    
}
