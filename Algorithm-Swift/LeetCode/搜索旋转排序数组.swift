//
//  搜索旋转排序数组.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 搜索旋转排序数组 {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
            
        if nums.isEmpty {
            return -1
        }
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let mid = (right + left) / 2
            
            if nums[mid] == target {
                return mid
            }
            
            if nums[left] <= nums[mid] {
                if target < nums[mid] && target >= nums[left] {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else {
                if target > nums[mid] && target <= nums[right] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        return -1
        
    }
    
}
