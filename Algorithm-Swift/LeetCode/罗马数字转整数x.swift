//
//  罗马数字转整数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/13.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 罗马数字转整数 {
    
    func romanToInt(_ s: String) -> Int {
        var result = 0
        
        for i in s {
            guard let begin = s.lastIndex(of: i) else { return result }
            let end = s.index(begin, offsetBy: 1)
            let num = intFromRomeNum(String(s[begin...end]))
            let preNum = intFromRomeNum(String(i))
            if preNum > num {
                result += preNum
            } else {
                result -= preNum
            }
        }
        
        return result
    }
    
    func intFromRomeNum(_ rome: String) -> Int {
        switch rome {
        case "I":
            return 1
        case "V":
            return 5
        case "X":
            return 10
        case "L":
            return 50
        case "C":
            return 100
        case "D":
            return 500
        case "M":
            return 1000
        default:
            return 0
        }
    }
    
}
