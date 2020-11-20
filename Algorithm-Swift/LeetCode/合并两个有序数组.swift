//
//  合并两个有序数组.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


/**
 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
 */

class 合并两个有序数组 {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        var result = [Int]()
        var left = 0
        var right = 0
        
        while left < m && right < n {
            if nums1[left] < nums2[right] {
                result.append(nums1[left])
                left += 1
            } else {
                result.append(nums2[right])
                right += 1
            }
        }
        
        if left == m {
            result.append(contentsOf: nums2[right ..< n])
        } else if right == n {
            result.append(contentsOf: nums1[left ..< m])
        }
        
        nums1 = result
        
    }
    
}
