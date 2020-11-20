//
//  两数之和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/13.
//  Copyright © 2020 方昱恒. All rights reserved.
//


//给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
//
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素不能使用两遍。

//示例:
//
//给定 nums = [2, 7, 11, 15], target = 9
//
//因为 nums[0] + nums[1] = 2 + 7 = 9
//所以返回 [0, 1]


/* 暴力解法 */
//class Solution {
//
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//        for i in 0 ..< nums.count {
//            for j in 0 ..< nums.count {
//                if i == j {
//                    continue
//                }
//                if nums[i] + nums[j] == target {
//                    return [i, j]
//                }
//            }
//        }
//
//        return [Int]()
//
//    }
//
//}


/* 哈希表 */
class 两数之和 {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dict = [Int: Int]()
        
        for i in 0 ..< nums.count {
            let remain = target - nums[i]
            if dict.keys.contains(remain) {
                if let remainIndex = dict[remain], dict[remain] != i {
                    return [i, remainIndex]
                }
            }
            dict[nums[i]] = i
        }
        
        return [Int]()
        
    }
    
}
