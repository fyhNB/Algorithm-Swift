//
//  最小移动次数使数组元素相等.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/6.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最小移动次数使数组元素相等 {
    
    func minMoves(_ nums: [Int]) -> Int {
        
        let nums = nums.sorted()
        var moves = 0
        
        for i in 0 ..< nums.count - 1 {
            moves += (nums[i + 1] - nums[i] + moves)
        }
        
        return moves
    }
    
}
