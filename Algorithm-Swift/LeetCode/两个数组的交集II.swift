//
//  两个数组的交集.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 两个数组的交集II {
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let nums1 = nums1.sorted()
        let nums2 = nums2.sorted()
        var index1 = 0
        var index2 = 0
        
        var result = [Int]()
        while index1 < nums1.count && index2 < nums2.count {
            if nums1[index1] < nums2[index2] {
                index1 += 1
            } else if nums1[index1] > nums2[index2] {
                index2 += 1
            } else {
                result.append(nums1[index1])
                index1 += 1
                index2 += 1
            }
        }
        
        return result
    }
    
}
