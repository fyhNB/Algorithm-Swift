//
//  最后一个单词的长度.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/16.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 最后一个单词的长度 {
    
    func lengthOfLastWord(_ s: String) -> Int {
        
        if s.count == 0 {
            return 0
        }
        
        let separated = s.split(separator: Character(" "))
        
        for i in (0 ..< separated.count).reversed() {
            if String(separated[i]) != " " {
                return String(separated[i]).count
            }
        }
        
        return 0
        
    }
    
}

