//
//  打家劫舍.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 打家劫舍 {
    
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return nums[1]
        }
        
        var profits = [nums[0], max(nums[0], nums[1])]
        var maxProfit = profits.last!
        
        for i in 2 ..< nums.count {
            maxProfit = max(profits[i - 1], profits[i - 2] + nums[i])
            profits.append(maxProfit)
        }
        
        return maxProfit
    }
    
}
