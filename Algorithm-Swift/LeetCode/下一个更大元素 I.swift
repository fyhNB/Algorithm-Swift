//
//  下一个更大元素 I.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 下一个更大元素I {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var res = [Int]()
        
        for i in 0 ..< nums1.count {
            var flag = false
            for j in i + 1 ..< nums2.count {
                if nums2[j] > nums1[i] {
                    res.append(nums2[j])
                    flag = true
                }
                if flag {
                    break
                }
            }
            if !flag {
                res.append(-1)
            }
        }
        
        return res
    }
}
