//
//  丢失的数字.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 丢失的数字 {
    
    func missingNumber(_ nums: [Int]) -> Int {
        var result = 0
        
        for i in 0 ..< nums.count {
            result = result ^ nums[i] ^ i
        }
        
        return result ^ nums.count
    }
    
}
