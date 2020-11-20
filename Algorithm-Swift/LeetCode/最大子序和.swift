//
//  最大子序和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/15.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最大子序和 {
    
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var ans = nums[0]
        var sum = 0
        
        for num in nums {
            if sum > 0 {
                sum += num
            } else {
                sum = num
            }
            ans = max(sum, ans)
        }
        
        return ans
    }

}
