//
//  各位相加.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 各位相加 {
    
    func addDigits(_ num: Int) -> Int {
        if num / 10 == 0 {
            return num
        }

        var tmp = num
        var sum = 0
        while tmp > 0 {
            let a = tmp % 10
            sum += a
            tmp /= 10
        }

        return addDigits(sum)
    }
    
//    func addDigits(_ num: Int) -> Int {
//        return (num - 1) % 9 + 1
//    }

}
