//
//  找到所有数组中消失的数字.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/4.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 找到所有数组中消失的数字 {
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var hashArray = [Int](repeating: 0, count: nums.count)
        
        for num in nums {
            hashArray[num - 1] = 1
        }
        
        var result = [Int]()
        
        for i in 0 ..< hashArray.count {
            if hashArray[i] == 0 {
                result.append(i + 1)
            }
        }
        
        return result
    }
    
}
