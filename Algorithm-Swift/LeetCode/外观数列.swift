//
//  外观数列.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/15.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class 外观数列 {
    
    func countAndSay(_ n: Int) -> String {
        
        if n==0 {
            return ""
        } else if n == 1 {
            return "1"
        }
        
        let before = countAndSay(n-1)
        
        var start = before[before.index(before.startIndex, offsetBy: 0)]
        var count = 1
        var result = ""
        
        for i in 1 ..< before.count {
            let current = before[before.index(before.startIndex, offsetBy: i)]
            if start == current {
                count += 1
            } else {
                result.append("\(count)\(start)")
                start = current
                count = 1
            }
        }
        
        result.append("\(count)\(start)")
        return result
        
    }

}
