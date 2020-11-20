//
//  第三大的数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 第三大的数 {
    
    func thirdMax(_ nums: [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }

        var arr = [Int](repeating: Int.min, count: 3)
        
        for i in 0 ..< 3 {
            for num in nums {
                if i == 0 {
                    if num > arr[0] {
                        arr[0] = num
                    }
                } else if i == 1 {
                    if num > arr[1] && num < arr[0] {
                        arr[1] = num
                    }
                } else {
                    if num > arr[2] && num < arr[1] {
                        arr[2] = num
                    }
                }
            }
        }
        
        for num in arr.reversed() {
            if num != Int.min {
                return num
            } else {
                return arr[0]
            }
        }
        
        return 0
    }
    
}
