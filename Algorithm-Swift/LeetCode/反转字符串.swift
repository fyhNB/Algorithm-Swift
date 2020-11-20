//
//  反转字符串.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 反转字符串 {
    
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        while left < right {
            let tmp = s[left]
            s[left] = s[right]
            s[right] = tmp
            left += 1
            right -= 1
        }
    }
    
}
