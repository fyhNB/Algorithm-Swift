//
//  只出现一次的数字.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 只出现一次的数字 {
    
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for item in nums {
            result ^= item
        }
        return result
    }
    
}
