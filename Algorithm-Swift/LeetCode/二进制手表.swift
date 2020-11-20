//
//  二进制手表.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/27.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二进制手表 {
    
    func readBinaryWatch(_ num: Int) -> [String] {
        var result = [String]()
            
        for h in 0 ... 11 {
            for m in 0 ... 59 {
                if count1(h) + count1(m) == num {
                    result.append(String(format: "%d:%02d", h, m))
                }
            }
        }
        
        return result
    }
    
    private func count1(_ num: Int) -> Int {
        var num = num
        var count = 0
        while num != 0 {
            if num & 1 == 1 {
                count += 1
            }
            num >>= 1
        }
        return count
    }
    
}
