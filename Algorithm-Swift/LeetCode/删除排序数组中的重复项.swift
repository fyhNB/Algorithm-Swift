//
//  删除排序数组中的重复项.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 删除排序数组中的重复项 {
    
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        nums = [Int](Set(nums)).sorted()
//        return nums.count
//    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {

        var tmpArr = [Int]()

        for num in nums {
            let last = tmpArr.last
            if last == num {
                continue
            } else {
                tmpArr.append(num)
            }
        }

        nums = tmpArr

        return tmpArr.count
    }
    
}
