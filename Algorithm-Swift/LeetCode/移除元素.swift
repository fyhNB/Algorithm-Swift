//
//  移除元素.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 移除元素 {
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        var last = nums.count - 1
        var result: Int?
        
        for count in 0 ..< nums.count {
            
            if nums[count] == val {
                while nums[last] == val && last > count {
                    last -= 1
                }
                if last == count {
                    return count
                }
                let tmp = nums[count]
                nums[count] = nums[last]
                nums[last] = tmp
            }
            
            result = count
        }
        
        return (result ?? 0) + 1
    }
}
