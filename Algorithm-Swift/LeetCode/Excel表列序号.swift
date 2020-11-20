//
//  Excel表列序号.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class Excel表列序号 {
    
    func titleToNumber(_ s: String) -> Int {
        var result = 0
        
        let s = s.reversed()
        
        for i in 0 ..< s.count {
            let ascii = UnicodeScalar(String(s[s.index(s.startIndex, offsetBy: i)]))
            result += i == 0 ? (Int(UInt32(ascii!) - 64)) : pow(26, i) * (Int(UInt32(ascii!) - 64))
        }
        
        return result
    
    }
    
    private func pow(_ x: Int, _ y: Int) -> Int {
        
        var result = 1
        
        for _ in 0 ..< y {
            result *= x
        }
        
        return result
        
    }
    
}
