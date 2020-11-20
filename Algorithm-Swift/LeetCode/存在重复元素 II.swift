//
//  存在重复元素 II.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 存在重复元素II {
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()
        
        for i in 0 ..< nums.count {
            if dict[nums[i]] == nil {
                dict[nums[i]] = i
            } else {
                if abs(dict[nums[i]]! - i) <= k {
                    return true
                }
                dict[nums[i]] = i
            }
        }
        
        return false
    }
    
}
