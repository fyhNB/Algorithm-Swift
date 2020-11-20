//
//  除自身以外数组的乘积.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


//给你一个长度为 n 的整数数组 nums，其中 n > 1，返回输出数组 output ，其中 output[i] 等于 nums 中除 nums[i] 之外其余各元素的乘积。
//
//示例:
//输入: [1,2,3,4]
//输出: [24,12,8,6]


class 除自身以外数组的乘积 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {

        var output = [Int](repeating: 0, count: nums.count)
        var left = [Int](repeating: 1, count: nums.count)
        var right = [Int](repeating: 1, count: nums.count)
         
        for i in 1 ..< nums.count {
            left[i] = left[i - 1] * nums[i - 1]
        }
        
        for i in (0 ..< nums.count - 1).reversed() {
            right[i] = right[i + 1] * nums[i + 1]
        }
        
        for i in 0 ..< nums.count {
            output[i] = left[i] * right[i]
        }
        
        return output

    }
}
