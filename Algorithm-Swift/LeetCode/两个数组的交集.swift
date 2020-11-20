//
//  两个数组的交集.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 两个数组的交集 {
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = Set<Int>()
        let set1 = Set(nums1)
        
        for num in nums2 {
            if set1.contains(num) {
                result.insert(num)
            }
        }
        
        return Array(result)
    }
    
}
