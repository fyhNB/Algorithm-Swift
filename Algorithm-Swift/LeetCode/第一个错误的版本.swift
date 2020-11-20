//
//  第一个错误的版本.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

protocol VersionControl {
    func isBadVersion(_ version: Int) -> Bool
}

class 第一个错误的版本: VersionControl {
    
    func isBadVersion(_ version: Int) -> Bool {
        return true
    }
    
    func firstBadVersion(_ n: Int) -> Int {
        var left = 0
        var right = n

        while left <= right {
            let mid = (left + right) / 2
            if isBadVersion(mid) {
                if !isBadVersion(mid - 1) {
                    return mid
                }
                right = mid - 1
            } else {
                if isBadVersion(mid + 1) {
                    return mid + 1
                }
                left = mid + 1
            }
        }

        return left
    }
    
}
