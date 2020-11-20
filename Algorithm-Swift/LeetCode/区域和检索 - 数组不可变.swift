//
//  区域和检索 - 数组不可变.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 区域和检索_数组不可变_NumArray {
    
    var sums = [Int]()

    init(_ nums: [Int]) {
        for i in 0 ..< nums.count {
            sums.append(nums[i] + ( i == 0 ? 0 : sums[i - 1]))
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return i == 0 ? sums[j] : sums[j] - sums[i - 1]
    }
    
}
