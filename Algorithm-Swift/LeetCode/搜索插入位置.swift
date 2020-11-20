//
//  搜索插入位置.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/15.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 搜索插入位置 {
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {

        if nums.count == 0 {
            return 0
        }

        var left = 0
        var right = nums.count - 1

        if nums[left] > target {
            return 0
        } else if nums[right] < target {
            return right + 1
        }

        while left <= right {

            let mid = (left + right) / 2

            if target < nums[mid] {
                right = mid - 1
            } else if target > nums[mid] {
                left = mid + 1
            } else {
                return mid
            }

        }

        return left

    }
    
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//
//        if nums.count == 0 {
//            return 0
//        }
//
//        for i in 0 ..< nums.count {
//
//            if target <= nums[i] {
//                return i
//            }
//        }
//
//        if nums[0] > target {
//            return 0
//        } else if nums.last! < target {
//            return nums.count
//        }
//
//        return 0
//    }
        
}
