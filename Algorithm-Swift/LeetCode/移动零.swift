//
//  移动零.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 移动零 {
    func moveZeroes(_ nums: inout [Int]) {
        var lastNonZero = 0
        for i in 0 ..< nums.count {
            if nums[i] != 0 {
                nums[lastNonZero] = nums[i]
                lastNonZero += 1
            }
        }
        
        for i in lastNonZero ..< nums.count {
            nums[i] = 0
        }
    }
}
