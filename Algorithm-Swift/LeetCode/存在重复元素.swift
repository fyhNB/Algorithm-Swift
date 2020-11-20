//
//  存在重复元素.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 存在重复元素 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        
        for i in 0 ..< nums.count {
            if dict[nums[i]] == nil {
                dict[nums[i]] = i
            } else {
                return true
            }
        }
        
        return false
    }
}
