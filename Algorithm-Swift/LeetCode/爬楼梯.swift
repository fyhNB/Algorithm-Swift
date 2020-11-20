//
//  爬楼梯.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 爬楼梯 {
    
    func climbStairs(_ n: Int) -> Int {
        
        var result = [Int](repeating: 0, count: n + 1)
        
        for i in 1 ... n {
            if i == 1 || i == 2 {
                result[i] = i
                continue
            }
            
            result[i] = result[i - 1] + result[i - 2]
        }
        
        return result[n]
        
    }
    
}
