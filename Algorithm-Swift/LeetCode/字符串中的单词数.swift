//
//  字符串中的单词数.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/4.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 字符串中的单词数 {
    
    func countSegments(_ s: String) -> Int {
        
        var result = 0
        let charArray = Array(s)
                
        for i in 0 ..< charArray.count {
            if (i == 0 || charArray[i - 1].asciiValue! == 32) && charArray[i].asciiValue! != 32 {
                result += 1
            }
        }
        
        return result
    }
    
}
