//
//  提莫攻击.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 提莫攻击 {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        if timeSeries.count == 0 {
            return 0
        }
        
        var res = 0
        
        for i in 0 ..< timeSeries.count - 1 {
            if timeSeries[i + 1] - timeSeries[i] < duration {
                res += timeSeries[i + 1] - timeSeries[i]
            } else {
                res += duration
            }
        }
        
        return res + duration
    }
}
