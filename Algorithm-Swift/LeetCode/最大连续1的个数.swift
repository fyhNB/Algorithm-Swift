//
//  最大连续1的个数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

class 最大连续1的个数 {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var nums = nums
        nums.append(0)
        var count = 0
        var max_ = 0
        
        for i in nums {
            if i == 1 {
                count += 1
            } else {
                max_ = max(max_, count)
                count = 0
            }
        }
        
        return max_
    }
}
